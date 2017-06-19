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

describe 'count' do
  it 'counts number of elements in array' do
    arr = BasicStack.new
    arr.array = ['one', 'two', 'three', 'four']

    expect(arr.count_it).to eq(4)
  end
end

describe 'peek' do
  it 'gives the top element without removing it' do
    arr = BasicStack.new
    arr.array = ['one', 'two', 'three']

    expect(arr.peek).to eq('one')
  end
end
