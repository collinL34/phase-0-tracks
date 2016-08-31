# collin and shana project

def greeter
  puts 'Hello how was your day?'
  yield
end

greeter {puts 'my day was fantastic!'}

actors = ['tom hanks','tom cruise','chris pratt','angelina jolie']

actors_movies = {
  'tom hanks': 'forest gump',
  'tom cruise': 'the last samurai',
  'chris pratt': 'jurassic world',
  'angelina jolie': 'maleficent'
}

actors.each do |actors|
  puts "i love #{actors}"
end

actors_movies.each {|actor, movie| puts "#{actor} was great in #{movie}"}

actors.map do |actors|
  puts actors.upcase
end

actors_movies.map do |actor,movie|
  puts "#{actor.upcase} was great in #{movie.upcase}"
end

actors.map! do |actors|
  puts "#{actors.reverse}"
  actors.reverse
end

puts 'new revision'
puts "#{actors}"

num_hash = {
  'one': 1,
  'two': 2,
  'six': 6,
  'nine': 9
}

num_array = [1,2,6,7,5,7,9,6]

num_array.delete_if do |num|
  p num_array
  num < 5
end
puts num_array

num_array = [1,2,6,7,5,7,9,6]

num_array.delete_if do |num|
  p num_array
  num > 5
end

puts num_array

num_hash = {
  'one': 1,
  'two': 2,
  'six': 6,
  'nine': 9
}

num_hash.delete_if do |key,num|
  p num_hash
  num < 5
end
puts num_hash

num_hash = {
  'one': 1,
  'two': 2,
  'six': 6,
  'nine': 9
}

num_hash.delete_if do |key,num|
  p num_hash
  num > 5
end

puts num_hash

num_hash = {
  'one': 1,
  'two': 2,
  'six': 6,
  'nine': 9
}

num_hash.delete_if {|key,value| value.even?}
p num_hash

num_array = [1,2,6,7,5,7,9,6]

num_array.delete_if {|num| num.even?}
p num_array

letter_array = ['A','B','d','D']

letter_array.delete_if do |letter|
  p letter
  letter == letter.upcase
  break if letter == letter.downcase
end

p letter_array

letter_hash = {
  a: 'a',
  b: 'b',
  c: 'C',
  e: 'e'
}

letter_hash.delete_if do |key,value|
  p value
  value == value.downcase
  break if value == value.upcase
end

p letter_hash