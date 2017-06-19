class BasicStack

  attr_accessor :array

  def initialize
    @array = []
  end

  def push_it(element)
    @array[0] = element
  end

  def pop_it
    @array.delete_at(0)
  end

  def count_it
    counter = 0
    @array.each {|elem| counter += 1}
    counter
  end

  def peek
    @array[0]
  end

  def max_it
    max = @array[0]
    @array.each do |element|
      max = element if element > max
    end
    max
  end
end
