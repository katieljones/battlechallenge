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

get '/cat' do
  "<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'
  </div>" 
end
