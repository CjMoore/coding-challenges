require 'pry'

def merging_reversed_lists(arr1, arr2)
  final_arr = []

  arr1.each_with_index do |element, index|
    unless arr2[index].nil?
      if arr2[index] > element
        final_arr.unshift(arr2[index])
        final_arr.unshift(element)
      else
        final_arr.unshift(element)
        final_arr.unshift(arr2[index])
      end
    else
      final_arr.unshift(element)
    end
  end

  final_arr
end
