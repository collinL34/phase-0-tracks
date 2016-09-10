#create a class for the hangmanish game
#decide wether we ask the user/users if their are two players of if they are playing against a computer
  #then create an instance of the hangman class for the computer that will have constant variables
  #create a method that changes the output for everytime the user gets a letter correct then adds that letter in the correct index possible array

class Hangman

  attr_accessor :guess

  def word(word)
    @guess_word = word
    @guess = Array.new(word.length) {'-'}.join('')
    @guess
  end

  def finder(char)
    @character = char
    guess = ['l','o','o','s','e']
    counter = 0
    while counter < guess.length
      letter = guess[counter]
      if letter == char
        result = adder(counter)
      end
      counter += 1
    end
  p result
end

  def adder(arg)
    @guess.insert(arg,@character)
    @guess.chop!
    @guess
  end

end

game = Hangman.new

puts 'please give me a word'
user = gets.chomp
guess_word = game.word(user)
word_length = guess_word.length

word_length.times do
  puts "Here is your blank word #{guess_word}, give me a letter"
  letter = gets.chomp
  guess_word = game.finder(letter)
end