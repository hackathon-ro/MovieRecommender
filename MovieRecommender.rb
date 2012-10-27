require 'sinatra'
require 'sinatra/activerecord'

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

get "/" do
  erb :welcomepage
end

