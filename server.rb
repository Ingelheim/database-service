require 'sinatra'
require "sinatra/activerecord"
require 'json'
require_relative "./models/user"

set :port, 1234
set :database, {adapter: "sqlite3", database: "login-service.sqlite3"}

post '/register' do
  user = User.new(params)
  if user.save
    status 200
    user.to_json
  else
    status 401
  end
end

post '/login' do
  user = User.find_by(email: params[:email])

  if user == nil
    status 400
  elsif user.login_with(params[:password])
    status 200
    user.to_json
  else
    status 401
  end
end
