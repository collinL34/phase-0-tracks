
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new = ('students.db');

get '/' do
  'Hello world'
end