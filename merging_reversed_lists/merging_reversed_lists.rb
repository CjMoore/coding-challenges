require 'pry'

def merging_reversed_lists(final_arr=[], arr1, arr2)
  unless arr1[0].nil? || arr2[0].nil?
    if arr1[0] > arr2[0]
      final_arr.unshift(arr1[0])
      arr1.shift
      merging_reversed_lists(final_arr, arr1, arr2)
    else
      final_arr.unshift(arr2[0])
      arr2.shift
      merging_reversed_lists(final_arr, arr1, arr2)
    end
  else
    if arr1[0].nil? && !arr2[0].nil?
      final_arr.unshift(arr2[0])
      arr2.shift
      merging_reversed_lists(final_arr, arr1, arr2)
    elsif arr2[0].nil? && !arr1[0].nil?
      final_arr.unshift(arr1[0])
      arr1.shift
      merging_reversed_lists(final_arr, arr1, arr2)
    else
      final_arr
    end
  end
end
