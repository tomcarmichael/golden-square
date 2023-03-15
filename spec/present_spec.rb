require 'present'

RSpec.describe Present do
  it 'Wraps and unwraps correctly' do
    present = Present.new
    present.wrap(true)
    expect(present.unwrap).to eq true
  end
  context 'Throws errors correctly' do
    it 'fails to wrap multiple presents' do
      present = Present.new
      present.wrap('football')
      expect{ present.wrap('toy') }. to raise_error 'A contents has already been wrapped.'
    end
    it 'fails to unwrap when no contents have been added' do
      present = Present.new
      expect{present.unwrap}. to raise_error 'No contents have been wrapped.'
    end
  end
end
