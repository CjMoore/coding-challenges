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
end
