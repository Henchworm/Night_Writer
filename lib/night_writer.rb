require './lib/writer'
require './lib/reader'
require './lib/braille_alphabet'

class NightWriter
  attr_reader :input,
              :output,
              :braille_alphabet,
              :reader,
              :writer,
              :alphabet,
              :braille

  def initialize
    @braille_alphabet = BrailleAlphabet.new
    @reader = Reader.new
    @writer = Writer.new
  end


  def file_creator
    characters = @reader.read
    braille = translate_to_braille(characters)
    @writer.write(braille)
  end

  def translate_to_braille(characters)
      characters.strip.downcase
      braille_char = nil
      @braille_alphabet.alphabet.each do |char_key, array|
        if characters == char_key
          braille_char = @braille_alphabet.alphabet[char_key]
      end
    end
    braille_char
  end

end






NightWriter.new.file_creator
