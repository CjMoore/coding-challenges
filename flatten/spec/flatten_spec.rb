require 'rspec'

describe CustomArray do
  context('it flattens arrays') do
    it ('returns same array for non nested arrays') do
      initial_arr = [1,2]

      c = CustomArray.new(initial_arr)
      expect(c.flatten).to eq(initial_arr)
    end

    it ('returns flattened array for single depth') do
      single_depth = [1, [2]]

      c = CustomArray.new(single_depth)
      expect(c.flatten).to eq([1, 2])
    end

    it('returns flattened array with depth of two') do
      depth_two = [1, 2, [3, [4]]]

      c = CustomArray.new(depth_two)
      expect(c.flatten).to eq([1,2,3,4])
    end
  end
end
