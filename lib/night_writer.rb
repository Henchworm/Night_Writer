require './lib/writer'
require './lib/reader'
require './lib/braille_alphabet'

class NightWriter
  attr_reader :braille_char,
              :translated

  def initialize
    @braille_alphabet = BrailleAlphabet.new
    @reader = Reader.new
    @writer = Writer.new
  end

  def import_transform_characters
    braille_chars = []
    characters = @reader.read
    characters.chars.each do |character|
      braille_chars << translate_to_braille(character)
    end
    line_format_and_print(braille_chars.compact)
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

  def line_format_and_print(braille_chars)
    transposed_format = braille_chars.transpose
        joined = []
        transposed_format.each do |element|
          joined << element.join
        end
          joined.each do |element|
            if element.length > 80
              joined << element.slice!(80..-1)
            end
          end
          formatted_line = joined
      @writer.write(formatted_line)
    end
end
NightWriter.new.import_transform_characters






