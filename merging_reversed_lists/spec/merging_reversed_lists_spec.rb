require 'spec_helper'

describe 'merging_reversed_lists takes two arrays' do
  it 'and returns a single array with sorted values' do
    arr1 = [10, 9, 6, 3, 1]
    arr2 = [8, 6, 5, 2]

    expect(merging_reversed_lists(arr1, arr2)).to eq([1, 2, 3, 5, 6, 6, 8, 9, 10])
  end
end
