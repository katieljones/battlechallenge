require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
    # 'Testing infrastructure working!'
  end
  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end
  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hp = $player_2.hp
    erb :play
  end
  post '/attack' do
    $player_2.attack
    redirect '/attack'
  end
  get '/attack' do
    erb :attack
  end
end
# rackup -p 4567  NOT SHOTGUN!!!
