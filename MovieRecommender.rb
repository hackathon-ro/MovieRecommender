require 'sinatra'
require 'sinatra/activerecord'

enable :sessions

configure do
  options = { :adapter => "sqlite3", :database => "dev.db" }
  ActiveRecord::Base.establish_connection(options)
end

class User < ActiveRecord::Base
  has_many :ratings
  has_many :movies, :through => :ratings
end

class Movie < ActiveRecord::Base
  has_many :ratings
  has_many :users, :through => :ratings
end

class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
end

before do
  session[:signed_in_user_id] ||= 1
  @signed_in_user_name = User.find_by_id(session[:signed_in_user_id]).nickname
  @my_user_id = session[:signed_in_user_id].to_i
end

get "/" do
  @movies = Movie.all
  erb :welcomepage
end

get "/signinform" do
  @users = User.all
  erb :signinform
end

post "/dosignin/:id" do
  session[:signed_in_user_id] = params[:id].to_i
  redirect "/"
end

