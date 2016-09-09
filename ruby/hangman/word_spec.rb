

require_relative 'word'

describe Hangman do
  let(:play) {Hangman.new}

    it "picks the word the user is suppposed to guess" do
      expect(play.computer_word_picker).to eq ["memorandum", "vegetation", "possession", "incredible", "accessible", "chimpanzee", "mastermind", "provincial", "photograph", "confession", "particular", "conscience", "compromise", "gregarious", "litigation", "reluctance", "management", "depression", "instrument", "simplicity"]
    end

    it "creates a string that' length is the same as the word to be guessed's length" do
    expect(play.guess_word).to eq '-'
  end
end
