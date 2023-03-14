require 'counter'

RSpec.describe Counter do
  it "Starts counter at 0" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end

  it "Increases counter by 1" do
    counter = Counter.new
    counter.add(1)
    expect(counter.report).to eq "Counted to 1 so far."
  end
end
