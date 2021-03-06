require 'sinatra'
require 'sinatra/activerecord'

enable :sessions

configure do
  options = { :adapter => "sqlite3", :database => "dev.db" }
  ActiveRecord::Base.establish_connection(options)
end

class User < ActiveRecord::Base
  validates :nickname, :presence => true
  has_many :ratings
  has_many :movies, :through => :ratings
end

class Movie < ActiveRecord::Base
  validates :name, :presence => true
  has_many :ratings
  has_many :users, :through => :ratings

  def self.with_ratings_of_user(raw_id)
    id = raw_id.to_i
    query = "SELECT movies.*, myratings.rating " +
              "FROM " +
                "movies " +
              "LEFT OUTER JOIN " +
                "(SELECT movie_id, rating " +
                   "FROM ratings " +
                  "WHERE user_id = #{id}) AS myratings " +
              "ON movies.id = myratings.movie_id"
    find_by_sql(query)
  end

  def self.recommend_for_movie(raw_id)
    input = 10 * raw_id.to_i + 1
    query = "SELECT " +
              "output, " +
              "(SELECT name FROM movies WHERE id = output) AS name, " +
              "SUM(weight) AS sumweight " +
            "FROM " +
              "recommendations " +
            "WHERE " +
              "input = #{input} " +
            "GROUP BY " +
              "output " +
            "ORDER BY " +
              "sumweight DESC " +
            "LIMIT 5"
    find_by_sql(query)
  end

  def self.recommend_for_user(raw_id)
    uid = raw_id.to_i
    query = "SELECT " +
              "output, " +
              "(SELECT name FROM movies WHERE id = output) AS name, " +
              "SUM(weight) AS sumweight " +
            "FROM " +
              "recommendations " +
            "WHERE " +
              "input IN (SELECT " +
                          "10 * movie_id + (rating IN (4,5)) " +
                        "FROM " +
                          "ratings " +
                        "WHERE " +
                          "user_id = #{uid} " +
                          "AND " +
                          "rating IN (1,2,4,5)) " +
              "AND " +
              "output NOT IN (SELECT movie_id FROM ratings WHERE user_id = #{uid}) " +
            "GROUP BY " +
              "output " +
            "ORDER BY " +
              "sumweight DESC"
    find_by_sql(query)
  end
end

class Rating < ActiveRecord::Base
  validates :user_id, :movie_id, :rating, :presence => true
  validates :rating, :numericality => { :only_integer => true,
                                        :greater_than_or_equal_to => 1,
                                        :less_than_or_equal_to => 5 }
  belongs_to :user
  belongs_to :movie

  def self.generate_recommendations_from_ratings
    stmt = "DELETE FROM recommendations"
    ActiveRecord::Base.connection.execute(stmt)
    stmt = "INSERT INTO recommendations " +
           "SELECT " +
             "10 * input.movie_id + (input.rating IN (4,5)), " +
             "output.movie_id, " +
             "output.rating " +
           "FROM " +
             "ratings AS input, " +
             "ratings AS output  " +
           "WHERE " +
             "input.user_id = output.user_id " +
             "AND " +
             "input.rating IN (1,2,4,5) " +
             "AND " +
             "output.rating IN (4,5) " +
             "AND " +
             "input.movie_id != output.movie_id"
    ActiveRecord::Base.connection.execute(stmt)
  end
end

class AugmentedMovie < ActiveRecord::Base
end

helpers do
  def dots(rating)
    dots = []
    (1..5).each do |i|
      dots << (rating >= i ? "y" : "n")
    end
    dots
  end
end

before do
  session[:signed_in_user_id] ||= 1
  @signed_in_user_name = User.find_by_id(session[:signed_in_user_id]).nickname
  @my_user_id = session[:signed_in_user_id].to_i
end

get "/" do
  erb :welcomepage
end

get "/notification" do
  erb :notification
end

get "/allmovies" do
  @movies = Movie.with_ratings_of_user(@my_user_id)
  erb :allmovies
end

get "/signinform" do
  @users = User.all
  erb :signinform
end

get "/addmovieform" do
  erb :addmovieform
end

get "/movie/:id" do
  movie_id = params[:id].to_i
  @m = Movie.find_by_id(movie_id)
  if @m.nil?
    @@notice = "Error: The movie has not been found."
    redirect "/notification"
  end
  @r = @m.ratings.where(:user_id => @my_user_id).first
  @r ||= Rating.new(:rating => 0)
  @people_also_liked = Movie.recommend_for_movie(movie_id)
  erb :movie
end

get "/myratings" do
  @movies = AugmentedMovie.find_all_by_user_id(@my_user_id)
  erb :myratings
end

get "/recommendations" do
  @you_might_like = Movie.recommend_for_user(@my_user_id)
  erb :recommendations
end

get "/admin" do
  erb :admin
end

post "/dosignin/:id" do
  session[:signed_in_user_id] = params[:id].to_i
  redirect "/"
end

post "/doaddmovie" do
  name = params[:moviename].to_s
  m = Movie.new(:name => name)
  if m.save
    redirect "/movie/#{m.id}"
  else
    @@notice = "Error: The movie could not be saved."
    redirect "/notification"
  end
end

post "/doratemovie/:movieid" do
  movie_id = params[:movieid].to_i
  if not Movie.exists?(movie_id)
    @@notice = "Error: The movie has not been found."
    redirect "/notification"
  end
  rating = params[:rating].to_i
  r = Rating.where(:user_id => @my_user_id, :movie_id => movie_id).first_or_initialize
  r.rating = rating
  if not r.save
    @@notice = "Error: The rating could not be saved."
    redirect "/notification"
  end
  redirect "/myratings"
end

post "/dogeneraterecommendations" do
  Rating.generate_recommendations_from_ratings
  @@notice = "The recommendations matrix has been successfully generated."
  redirect "/notification"
end

