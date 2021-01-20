def zip(*arrays)
  size = arrays[0].size
  result = []

  size.times do |i|
    result[i] = []
    arrays.each do |arr|
      result[i].push(arr.shift)
    end
  end

  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
p zip([1, 2, 3], [4, 5, 6], [7, 8, 9]) == [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

# Our zip method behaves like the Array#zip method
# But the calling object is the first array argument instead.
p zip([1, 2, 3], [4, 5, 6, 7, 8], [9]) == [[1, 4, 9], [2, 5, nil], [3, 6, nil]]
p [1, 2, 3].zip([4, 5, 6, 7, 8], [9]) == [[1, 4, 9], [2, 5, nil], [3, 6, nil]]