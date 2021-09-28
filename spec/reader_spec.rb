require './lib/reader'

RSpec.describe Reader do

  it "exists" do
    reader = Reader.new
    expect(reader).to be_a(Reader)
  end

   it "reads files and returns a string" do
     reader = Reader.new
     @input = ARGV[0]
     characters = File.new(@input).read
     expect(characters).to be_a(String)
   end
end
