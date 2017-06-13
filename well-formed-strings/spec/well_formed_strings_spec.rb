require 'rspec'
require_relative '../well_formed_strings'

describe 'valid' do
  context 'strings are validated' do
    it 'for simple bracket' do
      simple = '()'
      expect(String.validate(simple)).to eq(true)
    end
    it 'for more complex bracket string' do
      expect(String.validate('({}[])')).to eq(true)
    end
  end
end

describe 'invalid' do
  context 'invalid strings return false' do
    it 'for simple invalid' do
      simple = '[)'
      expect(String.validate(simple)).to eq(false)
    end
    it 'for more complex strings' do
      expect(String.validate('([}]{})')).to eq(false)
    end
  end
end
