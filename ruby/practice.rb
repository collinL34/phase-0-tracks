# puts 'give me a number.'
# num = gets.chomp

array = []
# array << num
# until num == 'quit'
#   puts 'give me a num please.'
#   num = gets.chomp
#   array << num
#   if num == 'quit'
#     p array
#   end
# end


# begin
#   puts 'give me a number.'
#   user = gets.chomp
#   array << user
# end until user == 'quit'
# p array

array = ['heather','collin','sam','conlan']
hash = {
  name: 'colin',
  age: 21,
  gf: 'heather dean',
  car: 'crossfire'
}

# array.each do |letter|
#   letter[0] = letter[0].upcase
#   p letter
# end
# p array

# array = [1,2,3,4,5]
# def updaser(array)
# array.map! do |letter|
#   letter * 2
#   letter / 2
# end
# p array
# end

# upcaser(array)



def calculator(num1,sym,num2)
  eval("#{num1} #{sym} #{num2}")
end

puts calculator(3,'+',7)