#create a class for the hangmanish game
#decide wether we ask the user/users if their are two players of if they are playing against a computer
  #then create an instance of the hangman class for the computer that will have constant variables
  #create a method that changes the output for everytime the user gets a letter correct then adds that letter in the correct index possible array

class Hangman

  attr_reader :player1
  attr_reader :player2_word

  def user_word(word) #loose
    @guess_word = word.split('')
    @player2_word = Array.new(word.length) {'-'}
    return @guess_word
  end

  def guess(char) #l
    @guess_word.each do |letter|
      if letter == char
        idx = @guess_word.index(letter)
        @player2_word.delete_at(idx)
        @player2_word.insert(idx,letter)
      else
        @player2_word
      end
    end
  end

end

game = Hangman.new

puts 'player 1 type the word'
player1 = gets.chomp #loose
word_to_guess = game.user_word(player1)

puts "Player2 guess a letter, with no spaces or capitalizations.  #{@player2_word}"
  player2 = gets.chomp #l
  p game.guess(player2)

until @player2_word == word_to_guess || player2 == 'done' do
  puts "Player2 guess a letter, with no spaces or capitalizations. #{@player2_word}"
  player2 = gets.chomp
  game.guess(player2)
  p @player2_word
end