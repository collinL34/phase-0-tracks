#create a class for the hangmanish game
#decide wether we ask the user/users if their are two players of if they are playing against a computer
  #if against the computer create a words array that hold the different words the computer could choose from
  #then create an instance of the hangman class for the computer that will have constant variables
  #create a method that changes the output for everytime the user gets a letter correct then adds that letter in the correct index possible array

class Hangman

  attr_reader :guess
  attr_reader :words

  def computer_guess_word
    computer_words = ["memorandum", "vegetation", "possession", "incredible", "accessible", "chimpanzee", "mastermind", "provincial", "photograph", "confession", "particular", "conscience", "compromise", "gregarious", "litigation", "reluctance", "management", "depression", "instrument", "simplicity"]
    @computer_word = computer_words[rand(20)]
    @guess = false
  end

  def guess_word
    guess_words_length = @computer_word.length
    #create a variable that holds the string of emty characters and adds them when guessed
    @words = Array.new(guess_words_length) {'-'}
  end

  def correct_guess(char)
    if @computer_word.include?(char)
      idx = @computer_word.index(char)
      p idx
      @word.delete_at(idx)
      @words.insert(idx,char)
      false
    else
      @words
      false
      puts 'try again'
    end
  end

end

game = Hangman.new

puts' getting word'
word = game.computer_guess_word
game.guess_word

while !game.guess
  p game.words
  puts "guess a letter, type 'done' if your done."
  @user = gets.chomp
  if !game.correct_guess(@user)
  end
  if @user == 'done'
    game.guess = true
  end
end