require 'sinatra/base'
require_relative 'Player'
class SuperBattle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1])
    $player2 = Player.new(params[:player_2])
    redirect 'play'
  end

  get '/play' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb :play
  end

  get '/attack' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
