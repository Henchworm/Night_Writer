require './lib/writer'
require './lib/reader'
require './lib/braille_alphabet'

class NightWriter
  attr_reader :input,
              :output,
              :braille_alphabet,
              :reader,
              :writer

  def initialize
    @braille_alphabet = BrailleAlphabet.new
    @reader = Reader.new
    @writer = Writer.new
  end


  def file_creator
    characters = @reader.read
    @writer.write(characters)
  end

 # def file_creator
 #    characters = File.read(@input)
 #    new_file = @output
 #    File.open(new_file, 'w') do |file|
 #     file.puts characters
 #    end
 #   puts "Created #{new_file} containing #{characters.length} characters."
 # end

 # def english_to_braille(character)
 #   @braille_alphabet[character]
 # end

  # def translator
  #   characters = File.read(@input)
  #   new_file = @output
  #     # if characters.include? letter
  #     #   File.open(new_file, 'w') do |file|
  #     #     file.puts braille_array
  #     #   end
  #     # end
  #     # puts "Created #{new_file} containing #{characters.length} characters."
  # end





  # def file_creator
  #    characters = File.read(@input)
  #    new_file = @output
  #    File.open(new_file, 'w') do |file|
  #     file.puts characters
  #    end
  #   puts "Created #{new_file} containing #{characters.length} characters."
  # end

  # def english_to_braille(character)
  #   @braille_alphabet[character]
  # end











end
NightWriter.new.file_creator
