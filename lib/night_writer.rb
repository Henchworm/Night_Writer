require './lib/writer'
require './lib/reader'

class NightWriter
  attr_reader :input,
              :output

  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
  end

  def translate
    characters = File.read(@input)
    new_file = @output
    File.open(new_file, 'w') do |file|
     file.puts characters
    end
   puts "Created #{new_file} containing #{characters.length} characters."
 end






end
NightWriter.new.translate
 #method to call both the reader and writer methods and then do the translation within
 #nightwriter class?
