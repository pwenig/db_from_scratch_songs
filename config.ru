require_relative 'song_app'
require 'sequel'


default_connection_string = 'postgres://gschool_user:password@localhost/songs_development'
DB = Sequel.connect(ENV["DATABASE_URL"] || default_connection_string)

run SongApp
