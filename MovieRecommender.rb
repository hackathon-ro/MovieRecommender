require 'sinatra'
require 'sinatra/activerecord'

configure do
  options = { :adapter => "sqlite3", :database => "dev.db" }
  ActiveRecord::Base.establish_connection(options)
end

