class NightReader
  attr_reader :input,
              :output,
              :characters
  def initialize
    @input = ARGV[0]
    @output= ARGV[1]
    @characters = characters
  end

  def read
    characters = File.new(@input).read
    translate_from_braille(characters)
  end

  def translate_from_braille(characters)
    characters += "ahhhh"
    write(characters)
  end

  def write(characters)
    File.open(@output, 'w') do |file|
       file.puts characters
      end
     puts "Created '#{@output}' containing #{@input.length} characters."
  end
end

nightreader = NightReader.new
nightreader.read
nightreader.write
