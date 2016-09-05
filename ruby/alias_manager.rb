# make fake spy names like a boss!!
# reverse the whole string so that first name is now last name
#but since the words are also now reversed we will re reverse the individual word os it goes back to the correct spelling
# then loop through the individual words and use next on the array
# vowels are made the next aeiou a => e
# and so are constants d => f


# def next_constants(char)
# constants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
#   constants.each do |letters|
#     if letters == char
#      p idx = constants.index(letters)
#      char = constants[idx].next
#     else
#       p 'shit'
#     end
#   end
#   p char
# end


# def next(char)
# vowels = ['a','e','i','o','u']
# constants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
#   if (vowels.index(char) != nil)
#     idx = vowels.index(char)
#     char = vowels[idx].next
#   else
#     idx = constants.index(char)
#     char = constants[idx].next
#   end
#   p char
# end

# next('a')

# def secret_name(string) #sam mora
# vowels = ['a','e','i','o','u']
# constants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
#       word_seperator = string.reverse.chars #arom mas, [a,r,o,m,m,a,s]
#       p word_seperator # [a,r,o,m,m,a,s]
#       new_word = []
#       word_seperator.each do |char|
#         if vowels.include?(char) == true # vowels.index(a)
#           p new_word << vowels[vowels.index(char)].next #vowels.index(a) => e
#         else
#           p new_word << constants[constants.index(char)].next #vowels.index(a) => e
#         end
#       end
#     p new_word.join(' ')
#     p new_word
# end

# p secret_name('sam mora')
# # => arom mas => esun net



def secret(string)
  word = string.split('')
  word.map! do |x|
      if x != ' '
        x.next
      else
        next
      end
  end
  p word.join(' ')
end

secret('heather dean')