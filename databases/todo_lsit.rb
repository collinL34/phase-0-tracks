#create a to do list where you have 7 tables mon - sun table for each
# you add basic schedule for every day
# make it so you can change the data in some days

# require gems
require 'sqlite3'


# create a database
db = SQLite3::Database.new('week_list')

# create a table

def table cretor(day, event)
  create_table = <<- SQL
    create table if not exists day (
      id integer primary key,
      event varchar(255)
    );
  SQL
end