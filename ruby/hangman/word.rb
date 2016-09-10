#create a class for the hangmanish game
#decide wether we ask the user/users if their are two players of if they are playing against a computer
  #then create an instance of the hangman class for the computer that will have constant variables
  #create a method that changes the output for everytime the user gets a letter correct then adds that letter in the correct index possible array

class Hangman

  attr_reader :player1
  attr_reader :player2_word

  def user_word(word)
    @guess_word = word.split('')
    @player2_word = Array.new(word.length) {'-'}
  end

  def guess(char)
    @guess_word.map! do |letter|
      if letter == 'char'
        idx = @player1.index(letter)
        @player2_word.slice(idx, idx + 1)
        @player2_word.insert(idx,letter)
      end
    end
    @player2_word
  end

end

game = Hangman.new

puts 'player 1 type the word'
@player1 = gets.chomp
guess_word = game.user_word(@player1)

puts "Player2 guess a letter, with no spaces or capitalizations. " + guess_word.join('')
player2 = gets.chomp

p game.guess(player2)