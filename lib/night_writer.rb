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

  def import_export_characters
    braille_chars = []
    characters = @reader.read
    characters.chars.each do |character|
      braille_chars << translate_to_braille(character)
    end
    @writer.write(braille_chars.compact.transpose.map{|row| row.join(" ")}.join("\n"))
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

  def line_formatter(braille_char)
    # line_1 = braille_char
    # if line_1[0].length > 80
    #   line_2 = []
    #   line_2 << braille_char[0][80..-1]
    #   line_1[0].slice!(80..-1)
    #   line_2 << line_1[1][80..-1]
    #   braille_char[1].slice!(80..-1)
    #   line_2 << braille_char[2][80..-1]
    #   line_1[2].slice!(80..-1)
    #   line_1.join("\n") + "\n" + line_2.join("\n")
    #   else
    #   braille_char.join("\n")
    end
end




# .compact.transpose.map{|row| row.join(" ")}.join("\n")

NightWriter.new.import_export_characters


#
# require "pry"; binding.pry
# line_2 = []
# line_2 << braille_char[0][80..-1]
# line[0].slice!(80..-1)
# line_2 << line_1[1][80..-1]
# braille_char[1].slice!(80..-1)
# line_2 << braille_char[2][80..-1]
# line_1[2].slice!(80..-1)
# line_1.join("\n") + "\n" + line_2.join("\n")
# else
# braille_char.join("\n")



# another way? def translate_to_braille(character)
#     braille_char = []
#     row_1 = character.chars.map {|char| @braille_alphabet.alphabet[character][0]}
#     braille_char << row_1.join
#     row_2 = character.chars.map {|char| @braille_alphabet.alphabet[character][1]}
#     braille_char << row_2.join
#     row_3 = character.chars.map {|char| @braille_alphabet.alphabet[character][2]}
#     braille_char << row_3.join
#     require "pry"; binding.pry
#   end
# end