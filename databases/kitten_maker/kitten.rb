#steps to creating a ruby sql connection

# link gems
require 'sqlite3'
require 'faker'

# create your database
db = SQLite3::Database.new('kittens.db')

#create table
# ruby string
create_table = <<-SQL
  create table kittens (
    id integer priary key,
    name varchar(255),
    age int
  );
SQL

db.execute(create_table)
#create a test
