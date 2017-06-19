require 'spec_helper'

describe 'push' do
  it 'pushes into first element of array' do
    arr = BasicStack.new
    arr.push_it('one')

    expect(arr.array[0]).to eq('one')
  end
end
