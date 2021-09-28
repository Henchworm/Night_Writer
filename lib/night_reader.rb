class NightReader
  attr_reader :input,
              :output
  def initialize
    @input = ARGV[0]
    @output= ARGV[1]
  end

  def read
    characters = File.new(@input).read
  end

  def write(braille)
    File.open(@output, 'w') do |file|
       file.puts braille
      end
     puts "Created '#{output}' containing #{@input.length} characters."
  end

end
