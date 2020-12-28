require_relative 'merge'

=begin
input: array
output: new array sorted

req:
  break down into nested sub-arrays
  merge back up on step at a time, sorting each time
  sorts both integers and strings
=end

def merge_sort(array)
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end