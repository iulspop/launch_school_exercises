=begin
input array
output element with highest value when yield to block

get all values
get index of max
return el

=end

def max_by(array)
  return nil if array.empty?
  values = array.each_with_object([]) { |el, arr| arr << yield(el) }
  index = values.index(values.max)
  array[index]
end

def max_by(array)
  return nil if array.empty?
  values = array.map { |el| yield(el) }
  index = values.index(values.max)
  array[index]
end

def max_by(array)
  array.sort_by { |el| yield(el)}.last
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil