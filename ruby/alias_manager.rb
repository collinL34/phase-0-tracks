# make fake spy names like a boss!!
# reverse the whole string so that first name is now last name
#but since the words are also now reversed we will re reverse the individual word os it goes back to the correct spelling
# then loop through the individual words and use next on the array
# vowels are made the next aeiou a => e
# and so are constants d => f


def name_split(name)
  word = name.reverse.split('')
  word.map! do |x|
    if is_vowels(x)
    x == 'u' ? x = 'a' : x = @vowels[@idx + 1]
    elsif is_constants(x)
      x == 'z' ? x = 'b' : x = @constants[@con_idx + 1]
    else x == ' '
      x = " "
    end
  end
  p word.join('')
 end

def is_vowels(char)
  @vowels = ['a','e','i','o','u']
  @idx = @vowels.index(char)
  return @vowels.include?(char)
end

def is_constants(char)
  @constants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  @con_idx = @constants.index(char)
  return @constants.include?(char)
end

puts "Please give me a name, type 'quit' if done."
  user = gets.chomp
  name_split(user)


# original = []
# original << user
# new_name = []
# new_name << secret(user)

# until user == 'quit'
#   puts "Please give me a name, type 'quit' if done."
#   user = gets.chomp
#   if user == 'quit'
#     break
#   end
#   original << user
#   finished_name = secret(user)
#   new_name << finished_name
# end

# counter = 0

#   while counter < original.length
#   first = original[counter]
#   second = new_name[counter]
#     puts first + ' is also known as ' + second
#   counter += 1
#   end
