class NightWriter


  def reader
    input_file = ARGV[0]
    lines = File.readlines(input_file)
    line_count = lines.size
    text = lines.join
    total_characters = text.length
    puts "#{total_characters} characters"
  end



end


 # def self.input
 # total_characters = []
 # File.open(ARGV[0]).each do |line|
 #      total_characters << line
 #    end
 #    total_characters.count
 #  end

# input = ARGV.first
# File.readlines(input)
# line_count = lines.size
# text = lines.join
# total_characters = text.length
# puts "Read file with #{total_characters}"
# end
#ARGV1 will be used for output

  #
  # File.open(ARGV[0]).each do |line|
  #     puts line
