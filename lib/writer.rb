class Writer
  attr_reader :writer

  def initialize
    @writer = ARGV[1]
  end

  def write(characters)
  File.open(@writer, 'w') do |file|
     file.puts characters
   end
   puts "Created '#{@writer}' countaining #{characters.length} characters."
 end

end
