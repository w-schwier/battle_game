require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play', 303
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/battlefield' do
    @game = $game
    @game.attack(@game.player2)
    erb :battlefield
  end

  run! if app_file == $0

end
