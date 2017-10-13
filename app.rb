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
    @random_number = rand(1..30)
    session[:random_number] = @random_number
    erb(:play)
  end

  get '/p1attacksp2' do
    @points_at_stake = session[:random_number]
    $game.attack($game.player2, @points_at_stake)
    erb(:attack_confirmation)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
