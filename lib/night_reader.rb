class NightReader
  attr_reader :input,
              :output,
              :characters
  def initialize
    @input = ARGV[0]
    @output= ARGV[1]
    @characters = characters
  end

  def read_write
    characters = File.new(@input).read
    File.open(@output, 'w') do |file|
       file.puts characters
      end
     puts "Created '#{@output}' containing #{@input.length} characters."
  end


  # def write(characters)
  #   File.open(characters, 'w') do |file|
  #      file.puts @input
  #     end
  #    puts "Created '#{@output}' containing #{@input.length} characters."
  # end
end

NightReader.new.read_write