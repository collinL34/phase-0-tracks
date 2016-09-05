# make fake spy names like a boss!!
# reverse the whole string so that first name is now last name
#but since the words are also now reversed we will re reverse the individual word os it goes back to the correct spelling
# then loop through the individual words and use next on the array
# vowels are made the next aeiou a => e
# and so are constants d => f


def secret_name(string) #sam mor
vowels = ['a','e','i','o','u']
constants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
      word_seperator = string.reverse.chars #arom mas, [a,r,o,m,m,a,s]
      p word_seperator # [a,r,o,m,m,a,s]
      new_word = word_seperator.map do |char|
        if vowels.include?(char) # vowels.index(a)
          p char.next[vowels.index(char)] #vowels.index(a) => e
        else
          p char.next[constants.index(char)]
        end
      end
    p new_word.join(' ')
    p new_word
end

p secret_name('sam mora')
# => arom mas => esun net