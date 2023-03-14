require 'gratitudes'

RSpec.describe Gratitudes do
  it "initialising gratitude" do
    result = Gratitudes.new
    expect(result.format).to eq "Be grateful for: "
  end

  it "adds gratitude" do
    result = Gratitudes.new
    result.add("chocolate")
    expect(result.format).to eq "Be grateful for: chocolate"
  end

  it 'formats multiple items correctly' do
    result = Gratitudes.new
    result.add('chocolate')
    result.add('tea')
    expect(result.format).to eq "Be grateful for: chocolate, tea"
  end
end