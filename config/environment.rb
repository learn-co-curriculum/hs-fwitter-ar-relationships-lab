require 'bundler'
Bundler.require

require './app/models/tweet'
require './app/models/user'
require './app/models/relationship'


configure :development do
  set :database, "sqlite3:db/database.db"
end