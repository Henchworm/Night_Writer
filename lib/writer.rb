class Writer

  def write
  new_file = ARGV[1]
  File.open(new_file, 'w') do |file|
     file.puts characters
   end
   puts "Created '#{new_file}' countaining #{characters.length} characters."
 end

end
