class Writer
  def initialize
    @writer = ARGV[1]
    @char_counter = File.new(ARGV[0]).read.length
  end

  def write(braille)
  File.open(@writer, 'w') do |file|
     file.puts braille
   end
   puts "Created '#{@writer}' containing #{@char_counter} characters."
 end

end

# def line_break(braille_char)
#   if braille_char.length > 100
#     braille_char.slice(-1).sub("\n")
#   end
end