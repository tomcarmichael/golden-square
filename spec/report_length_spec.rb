require 'report_length'

RSpec.describe 'report length' do
  it 'reports the length of arya' do
    result = report_length('arya')
    expect(result).to eq "This string was 4 characters long."
  end
  it 'reports the length of tom' do
    result = report_length('tom')
    expect(result). to eq "This string was 3 characters long."
  end
  it 'reports the length of empty string' do
    result = report_length('')
    expect(result). to eq "This string was 0 characters long."
  end
end
