require 'sinatra/base'

class SuperBattle < Sinatra::Base
  get '/' do
    'Hello SuperBattle!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
