class Reader
  def initialize
    @input = ARGV[0]
  end

  def read
    characters = File.new(@input).read
  end
end
