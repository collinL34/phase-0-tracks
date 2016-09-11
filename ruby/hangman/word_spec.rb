#our class should keep prompting the user for a letter
#until the have either guesssed the word or entered all the letters
#then send a message to user wether they succeeded or failed

require_relative 'word'

describe Hangman do
  let(:play) {Hangman.new}

  it 'takes in a string and returns a string of symbols with the length of the input' do
    expect(play.word('lose')).to eq '----'
  end

  it 'takes in a character and finds the index of the char and calls the idx to the adder method and returns the current condition of stirng' do
    play.word('lose')
    expect(play.finder('o')).to eq '-o--'
  end

  it 'adds the new char string to its corret index for the string' do
    play.word('lose')
    play.finder('o')
    expect(play.adder(1)).to eq '-o--'
  end

end
