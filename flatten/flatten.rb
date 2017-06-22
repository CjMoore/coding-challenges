
class CustomArray

  def initialize (arr)
    @arr = arr
    @flattened = []
  end

  def flatten
    @arr.each do |element|
      if element.kind_of?(Array)
        sub_flatten(element)
      else
        @flattened << element
      end
    end
    p @flattened
  end

  def sub_flatten(array)
    array.each do |sub_element|
      if sub_element.kind_of?(Array)
        sub_flatten(sub_element)
      else
        @flattened << sub_element
      end
    end
  end
end

c = CustomArray.new([[1,2],[3,[4,5]]])
c.flatten
