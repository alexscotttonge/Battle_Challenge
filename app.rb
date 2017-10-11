require 'sinatra/base'


class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/names' do
    session[:name1], session[:name2] = params[:name1], params[:name2]
    redirect '/play'
  end

  get '/play' do
    @player1, @player2 = session[:name1], session[:name2]
    erb(:play)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end