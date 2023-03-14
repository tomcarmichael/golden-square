# call method
require 'greet'

RSpec.describe 'greet method' do 
  it "greets arya" do
    result = greet('arya')
    expect(result).to eq 'Hello, arya!'
  end
end

