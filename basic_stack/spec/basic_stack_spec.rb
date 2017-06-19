require 'spec_helper'

describe 'push' do
  it 'pushes into first element of array' do
    arr = BasicStack.new
    arr.push_it('one')

    expect(arr.array[0]).to eq('one')
  end
end

describe 'pop' do
  it 'removes the first element from the array' do
    arr = BasicStack.new
    arr.push_it('one')

    expect(arr.pop_it).to eq('one')
    expect(arr.array.length).to eq(0)
  end
end
