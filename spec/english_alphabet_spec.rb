require './lib/english_alphabet'

RSpec.describe EnglishAlphabet do
  it "exists" do
    english_alphabet = EnglishAlphabet.new
    expect(english_alphabet).to be_a(EnglishAlphabet)
  end

  it "stores all keys/values in a hash" do
    english_alphabet = EnglishAlphabet.new
    expect(english_alphabet.alphabet).to be_a(Hash)
    end
  end
