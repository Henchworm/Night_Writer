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
              :braille,
              :braille_char,
              :char,
              :format_characters

  def initialize
    @braille_alphabet = BrailleAlphabet.new
    @reader = Reader.new
    @writer = Writer.new
  end



  def print_translation
    braille_chars = []
    characters = @reader.read
    characters.chars.each do |character|
      braille_chars << translate_to_braille(character)
    end
    @writer.write(braille_chars.transpose.map{|row| row.join(" ")}.join("\n"))
  end


  def translate_to_braille(character)
      braille_char = nil
      @braille_alphabet.alphabet.each do |char_key, array|
        if character == char_key
          braille_char = @braille_alphabet.alphabet[char_key]
      end
    end
     braille_char
  end





end




NightWriter.new.print_translation
