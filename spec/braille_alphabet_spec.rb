require './lib/braille_alphabet'

RSpec.describe BrailleAlphabet do

  it "exists" do
    braille_alphabet = BrailleAlphabet.new
    expect(braille_alphabet).to be_a(BrailleAlphabet)
  end

  it "stores all keys/values in a hash" do
    braille_alphabet = BrailleAlphabet.new
    expect(braille_alphabet.alphabet).to be_a(Hash)
  end
end

