require 'check_codeword'

RSpec.describe "Check codeword method" do
  it "Returns tells the user if they guessed 'horse' correctly" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "Tells the user if they are close" do
    result = check_codeword("healthe")
    expect(result).to eq("Close, but nope.")
  end

  it "Tells the user if they guessed wrong" do
    result = check_codeword("foobar")
    expect(result).to eq("WRONG!")
  end
end