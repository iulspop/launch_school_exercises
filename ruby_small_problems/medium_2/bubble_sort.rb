=begin
input: array of integers or strings
output: same array but sorted

req
- input array has >= 2 elements

questions?
-

algorithm
- loop the loop
  - sorted = true
  - loop through array from index 0 to size - 2
    - compare el at index and index + 1
      - if greater,
        - exchange index is reassigned to the element at index + 1
        index + 1 is reassigned to element at index
        - reassign sorted to false
  - break if sorted is true
- return array

=end

def bubble_sort!(array)
  loop do
    sorted = true
    (0..array.size - 2).each do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        sorted = false
      end
    end
    break if sorted == true
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)