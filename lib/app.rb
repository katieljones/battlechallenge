require 'sinatra'

# set :session_secret, "J4mes"

get '/' do
  "hello!"
end

get '/secret' do
  "Shhh. it's a secret."
end

get '/what' do
  "WHAT WHAT WHY"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end
