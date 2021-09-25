class Reader

  def read
    input_file = ARGV[0]
    characters = File.read(input_file)
  end

end
