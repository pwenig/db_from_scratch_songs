require 'sinatra/base'
class SongApp < Sinatra::Application

  get '/' do

    erb :index
  end
end