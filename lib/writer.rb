class Writer
  attr_reader :writer

  def initialize
    @writer = ARGV[1]
  end

  def write(braille)
  File.open(@writer, 'w') do |file|
     file.puts braille
   end
   puts "Created '#{@writer}' countaining #{braille.length} characters."
 end

end
