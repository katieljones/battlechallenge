require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
    # 'Testing infrastructure working!'
  end
  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    p session[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end
  get '/play' do
    p session[:player_1_name]
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end
end
# rackup -p 4567  NOT SHOTGUN!!!
