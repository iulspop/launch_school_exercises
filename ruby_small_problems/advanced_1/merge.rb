def merge(arr1, arr2)
  new_arr = []
  whole_arr = arr1 + arr2
  whole_arr.size.times do
    min = whole_arr.min
    new_arr.push min
    whole_arr.delete_at(whole_arr.index(min))
  end
  new_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]