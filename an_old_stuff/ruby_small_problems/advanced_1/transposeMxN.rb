=begin
input: array
output: array but with rows and columns swapped

req:
  - mutate input array and return it

test cases:
see test

mental model:
use holding array to build new rows from columns, then fill input array
or
go column by column and put elements in right array

algo:
get n_rows and n_columns of matrix
must be equal, if not reject
init holding array with n_columns
loop through matrix rows
  loop n_columns times
    shift and push to respective holding array column
  end
end
return holding array

=end

def transpose(matrix)
  n_rows    = matrix.size
  n_columns = matrix[0].size
  holding_matrix = []
  n_columns.times { holding_matrix << [] }

  n_rows.times do |row_index|
    n_columns.times do |column_index|
      column_element = matrix[row_index].shift
      holding_matrix[column_index] << column_element
    end
  end

  holding_matrix
end

require 'minitest/autorun'

class TestTransposeMethod < MiniTest::Test
  def test_transpose_3x3_array
    matrix = [
      [1, 2, 3],
      [3, 4, 5],
      [6, 7, 8]
    ]

    assert_equal(
      [[1, 3, 6],[2, 4, 7],[3, 5, 8]],
      transpose(matrix)
    )
  end

  def test_transpose_4x3_array
    matrix = [
      [1, 5, 8],
      [4, 7, 2],
      [3, 9, 6],
      [6, 2, 8]
    ]

    assert_equal(
      [[1, 4, 3, 6], [5, 7, 9, 2], [8, 2, 6, 8]],
      transpose(matrix)
    )
  end

  def test_transpose_1x4_array
    matrix = [[1, 2, 3, 4]]

    assert_equal(
      [[1], [2], [3], [4]],
      transpose(matrix)
    )
  end

  def test_transpose_1x1_array
    matrix = [[1]]

    assert_equal(
      [[1]],
      transpose(matrix)
    )
  end

  def test_transpose_3x5_array
    matrix = [
      [1, 2, 3, 4, 5],
      [4, 3, 2, 1, 0],
      [3, 7, 8, 6, 2]
    ]

    assert_equal(
      [
      [1, 4, 3],
      [2, 3, 7],
      [3, 2, 8],
      [4, 1, 6],
      [5, 0, 2]
    ],
      transpose(matrix)
    )
  end
end