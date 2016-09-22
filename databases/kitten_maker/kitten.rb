#steps to creating a ruby sql connection

# link gems
require 'sqlite3'
require 'faker'

# create your database
db = SQLite3::Database.new('kittens.db')

#create table
# ruby string
create_table = <<-SQL
  create table if not exists kitten (
    id integer primary key,
    name varchar(255),
    age int
  );
SQL

db.execute(create_table)
# db.execute("insert into kitten (name,age) values ('mr mittens',2)")
kittens = db.execute("select * from kitten")
puts kittens.class

def kitten_explosion(db,name,age)
  db.execute("insert into kitten (name,age) values (?,?)",[name,age])
end

20.times do
  kitten_explosion(db,Faker::Name.name,2)
end

kittens.each do |kitten|
  puts "#{kitten[1]} is #{kitten[2]}."
end

#create a test



SELECT *
FROM user
JOIN reviews
ON reviews.user_id = user.id
JOIN business
ON business.id = reviews.business_id
WHERE business.id= 1;