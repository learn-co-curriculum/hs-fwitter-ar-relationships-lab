require 'bundler'
Bundler.require

require './app/models/tweet'
require './app/models/user'
require './app/models/message'


configure :development do
  set :database, "sqlite3:db/database.db"
end