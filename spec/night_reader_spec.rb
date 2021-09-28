require './lib/night_reader.rb'

RSpec.describe NightReader do

  it "exists" do
    nightreader = NightReader.new
    expect(nightreader).to be_a(NightReader)
  end

  it "reads files and returns a string + writes new file " do
    nightreader = NightReader.new
    @input = ARGV[0]
    characters = File.new(@input).read_write
    expect(characters).to be_a(String)
    # @output = ARGV[0]
    # english = "bbbb"
    # nightreader.write(english)
    # expect(english).to be_a(String)
  end
end







