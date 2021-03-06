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
# db.execute("insert into models (model,submodels,years,engine, manf_id) values ('300sl','N/A',1954-1963,2996,1)")

# join the manf and the models together in a variable

create_list = <<-SQL
  create table if not exists manf (
    id integer primary key,
    name varchar(255)
  );
SQL
db.execute(create_list)

  # create_table = <<-SQL
  #   create table if not exists chrysler (
  #     id integer primary key,
  #     model varchar(255),
  #     submodel varchar(255),
  #     year int,
  #     engine int,
  #     manf_id int,
  #     foreign key (manf_id) references manf(id)
  #   );
  # SQL
  # db.execute(create_table)
  # db.execute("insert into chrysler select * from models where models.manf_id=5")


 # create_table = <<-SQL
 #    create table if not exists Ferrari (
 #      id integer primary key,
 #      model varchar(255),
 #      submodel varchar(255),
 #      year int,
 #      engine int,
 #      manf_id int,
 #      foreign key (manf_id) references manf(id)
 #    );
 #  SQL
 #  db.execute(create_table)
 #  db.execute("insert into Ferrari select * from models where models.manf_id=2")


 # create_table = <<-SQL
 #    create table if not exists Chevrolet (
 #      id integer primary key,
 #      model varchar(255),
 #      submodel varchar(255),
 #      year int,
 #      engine int,
 #      manf_id int,
 #      foreign key (manf_id) references manf(id)
 #    );
 #  SQL
 #  db.execute(create_table)
 #  db.execute("insert into Chevrolet select * from models where models.manf_id=4")


 # create_table = <<-SQL
 #    create table if not exists Mercedes_Benz (
 #      id integer primary key,
 #      model varchar(255),
 #      submodel varchar(255),
 #      year int,
 #      engine int,
 #      manf_id int,
 #      foreign key (manf_id) references manf(id)
 #    );
 #  SQL
 #  db.execute(create_table)
 #  db.execute("insert into Mercedes_Benz select * from models where models.manf_id=1")

  # create_table = <<-SQL
  #   create table if not exists Lamborghini (
  #     id integer primary key,
  #     model varchar(255),
  #     submodel varchar(255),
  #     year int,
  #     engine int,
  #     manf_id int,
  #     foreign key (manf_id) references manf(id)
  #   );
  # SQL
  # db.execute(create_table)
  # db.execute("insert into Lamborghini select * from models where models.manf_id=6")


# db.execute("insert into manf (name) values ('Mercedes Benz')")
# db.execute("insert into manf (name) values ('Ferrari')")
# db.execute("insert into manf (name) values ('Ford')")
# db.execute("insert into manf (name) values ('Chevrolet')")
# db.execute("insert into manf (name) values ('chrysler')")

# join the tables with thier corresponding model/manf

# select from models
# models = db.execute('select * from models')
# p models

# select from manf
# manufactures = db.execute('select * from manf')
# p manufactures

# ask the user if they want to do something to the tables
puts 'Would you like to do something to the tables? Please type correctly.'
user = gets.chomp

db.execute(user) unless user == ''