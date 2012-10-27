require 'sinatra'
require 'sinatra/activerecord'

configure do
  options = { :adapter => "sqlite3", :database => "dev.db" }
  ActiveRecord::Base.establish_connection(options)
end

class User < ActiveRecord::Base
  has_many :ratings
end

class Movie < ActiveRecord::Base
  has_many :ratings
end

class Rating < ActiveRecord::Base
end

