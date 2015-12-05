require 'sinatra'
require "sinatra/activerecord"
require 'json'
require_relative "./models/location"

set :port, 2345
set :database, {adapter: "sqlite3", database: "database-service.sqlite3"}

get '/locations' do
  content_type :json
  Location.all.reverse.to_json
end

post '/savelocations' do
  params = JSON.parse request.body.read
  puts "PARAMS #{params['locations']}"

  params['locations'].each do | location |
    puts location.class
    Location.create(JSON.parse(location))
  end
  status 200
end
