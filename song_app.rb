require 'sinatra/base'
class SongApp < Sinatra::Application

  get '/' do
    song_table = DB[:songs]
    erb :index, locals: {songs: song_table.to_a}
  end

  post '/' do
    song_table = DB[:songs]
    song_table.insert(song: params[:song])
    redirect '/'
  end
end