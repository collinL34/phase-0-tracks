# create a database that holds lists of cars and their manufactures and the engine size and year of car
# create a single list of the models and their foriegn key for the manf. in the other list
# then use join on the manf. and its corresponding cars in the model list

# collect gems
require 'sqlite3'


# create database
db = SQLite3::Database.new('cars.db')

# create a list for models
create_list = <<-SQL
  create table if not exists models (
    id integer primary key,
    model varchar(255),
    submodels varchar(255),
    years int,
    engine int,
    manf_id int,
    foreign key (manf_id) references manf(id)
  );
SQL

# execute database
db.execute(create_list)

# add items to lists
# db.execute("insert into models (model,submodels,years,engine, manf_id) values ('gt350','R',1966-2016,302,3)")
# db.execute("insert into models (model,submodels,years,engine, manf_id) values ('Falcon','ranchero/sprint/squire/futura/wagon',1960-1970,302/260/289/351,3)")
# db.execute("insert into models (model,submodels,years,engine, manf_id) values ('chevelle','ss',1964-1973,350/454/327,4)")
# db.execute("insert into models (model,submodels,years,engine, manf_id) values ('250 GTO','N/A',1962-1964,3.0,2)")
# db.execute("insert into models (model,submodels,years,engine, manf_id) values ('crossfire','srt6',2004-2008,3.2,5)")

# create a manf list
create_list = <<-SQL
  create table if not exists manf (
    id integer primary key,
    name varchar(255)
  );
SQL

# execute the table

db.execute(create_list)

# db.execute("insert into manf (name) values ('Mercedes Benz')")
# db.execute("insert into manf (name) values ('Ferrari')")
# db.execute("insert into manf (name) values ('Ford')")
# db.execute("insert into manf (name) values ('Chevrolet')")
# db.execute("insert into manf (name) values ('chrysler')")

# join the tables with thier corresponding model/manf
