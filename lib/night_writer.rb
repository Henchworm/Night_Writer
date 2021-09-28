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
    line_format_and_print(braille_chars)
  end

  def line_format_and_print(braille_chars)
    transpose_format = braille_chars.compact.transpose
        joined = []
        transpose_format.each do |element|
          joined << element.join
        end
          joined.each do |element|
            if element.length > 80
              joined << element.slice!(80..-1)
            end
          end
          # joined << joined[0].slice!(80..-1)
          # joined << joined[1].slice!(80..-1)
          # joined << joined[2].slice!(80..-1)
          formatted_line = joined
      @writer.write(formatted_line)
    end


  # @writer.write(braille_chars.compact.transpose.map{|row| row.join(" ")}.join("\n"))
  def translate_to_braille(character)
  braille_char = nil
  @braille_alphabet.alphabet.each do |char_key, array|
    if character == char_key
      braille_char = @braille_alphabet.alphabet[char_key]
      end
    end
    braille_char
  end

#   def line_format_and_print(braille_chars)
#     nest_format = braille_chars.compact.transpose
#       nest_format.map do |n|
#         if n.length > 3
#           n.join.slice(5..-1)
#         end
#       end
#       joined = []
#       nest_format.each do |nest|
#         joined << nest.join
#       end
#     @writer.write(joined)
#     end
#     require "pry"; binding.pry
# end
end




# .compact.transpose.map{|row| row.join(" ")}.join("\n")

NightWriter.new.import_transform_characters






