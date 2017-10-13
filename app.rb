require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/names' do
    player1 = Player.new params[:name1]
    player2 = Player.new params[:name2]
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/p1attacksp2' do
    $game.attack($game.player2)
    erb(:attack_confirmation)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
