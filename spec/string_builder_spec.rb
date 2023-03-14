require 'string_builder'

RSpec.describe StringBuilder do
  it "initializes with an empty string" do 
    result = StringBuilder.new
    expect(result.output). to eq ""
  end

  it "concatenates strings" do
    result = StringBuilder.new
    result.add('hello')
    expect(result.output). to eq 'hello'
  end

  it 'reports its own length' do
    result =  StringBuilder.new
    result.add('hello')
    expect(result.size). to eq 5
  end
end

  