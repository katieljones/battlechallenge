require 'sinatra/base'
require './lib/player'
require './lib/game'

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
    redirect '/attack'
  end
  get '/attack' do
<<<<<<< HEAD
    Game.new.attack($player_2)
=======
    @player_2_name = $player_2.name
>>>>>>> 9b7851b7f967c028178adb053ff5f57f1b3bb3d8
    erb :attack
  end
end
# rackup -p 4567  NOT SHOTGUN!!!
