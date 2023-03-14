require 'present'

RSpec.describe Present do
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
