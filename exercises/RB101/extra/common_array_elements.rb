=begin
Given three arrays of integers, return the sum of elements that are common in all three arrays.

algo

init array
each array
  add object to array
  each uniq
    count values
    add value:count to object

array with objects of counts of uniq el
[
  {1 => 1, 5 => 10},
  {1 => 1, 2 => 3},
  {1 => 1, 2 => 3}
]

[1,2,3],[5,3,2],[7,3,2]

hold array
each first array
  arr1.each_with_index
    if el2 == el
      add to array
    end
  end
=end

def common(a,b,c)

end

# because 2 & 3 are common in all 3 arrays
puts common([1,2,3],[5,3,2],[7,3,2]) == 5

# because 2,2 & 3 are common in the 3 arrays
puts common([1,2,2,3],[5,3,2,2],[7,3,2,2]) == 7