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
end

class Rating < ActiveRecord::Base
  validates :user_id, :movie_id, :rating, :presence => true
  validates :rating, :numericality => { :only_integer => true,
                                        :greater_than_or_equal_to => 1 }
  belongs_to :user
  belongs_to :movie
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
  @movies = Movie.all
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
  erb :movie
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

