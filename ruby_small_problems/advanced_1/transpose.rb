=begin
input: array of arrays, number of arrays at the top level is the same as the number of elements in each array.
output: the first elements of each subarrays goes into all go into the first subarray of the next one. then second...

req:
- no mutation on first array, new array with old elements


algo:
given a matrix
initialize new_matrix
loop as many times as the size of the matrix
  initialize row
  loop through subarrays of matrix
    shift from subarray and push to row
  end
  push row to new_matrix
end
return new_matrix

=end

def transpose(matrix)
  result = []
  nonsense = 0..matrix.size - 1
  nonsense.each do |column_index|
    new_row = nonsense.map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]