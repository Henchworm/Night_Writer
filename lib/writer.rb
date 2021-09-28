class Writer
  def initialize
    @input = ARGV[1]
    @char_counter = File.new(ARGV[0]).read.length
  end

  def write(braille)
  File.open(@input, 'w') do |file|
     file.puts braille
    end
   puts "Created '#{@input}' containing #{@char_counter} characters."
 end
end
