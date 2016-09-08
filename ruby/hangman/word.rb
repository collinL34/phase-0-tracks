#create a class for the hangmanish game
#decide wether we ask the user/users if their are two players of if they are playing against a computer
  #if against the computer create a words array that hold the different words the computer could choose from
  #then create an instance of the hangman class for the computer that will have constant variables
  #create a method that changes the output for everytime the user gets a letter correct then adds that letter in the correct index possible array

class Hangman


  def computer_word_picker
    computer_words = ["memorandum", "vegetation", "possession", "incredible", "accessible", "chimpanzee", "mastermind", "provincial", "photograph", "confession", "particular", "conscience", "compromise", "gregarious", "litigation", "reluctance", "management", "depression", "instrument", "simplicity"]
    computer_words[rand(20)]
  end

  def guess_word
    guess_words_length = computer_word_picker.length
    #create a variable that holds the string of emty characters and adds them when guessed
    words = Array.new(guess_words_length) {'-'}
    words.join('')
  end

end

collin = Hangman.new
p collin.guess_word

# puts 'Would you like to play guess the Hangman?'
# user = gets.chomp

# if user == 'yes'
#   puts 'guesss the word ' + guess_word
# end