require './lib/writer.rb'

RSpec.describe Writer do

  it "exists" do
    writer = Writer.new
    expect(writer).to be_a(Writer)
  end

  xit "writes" do
    newfile = ARGV[1]
    writer1 = Writer.new
    @writer = newfile
    braille = "b"
    @char_counter = 1
    require "pry"; binding.pry
    expect(writer1.write(braille)).to be_a(String)
  end

end