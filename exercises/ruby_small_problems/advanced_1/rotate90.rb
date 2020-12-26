def transpose(matrix)
  n_rows    = matrix.size
  n_columns = matrix.first.size
  result = []

  n_columns.times do |column_index|
    new_row = n_rows.times.map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end

  result
end

def rotate90(matrix)
  transpose(matrix).map { |row| row.reverse }
end

require 'minitest/autorun'
require_relative '../lib/play'

class TestRotate90 < MiniTest::Test
  def test_rotate_3x3_matrix
    matrix = [
      [1, 5, 8],
      [4, 7, 2],
      [3, 9, 6]
    ]

    assert_equal(
      [[3, 4, 1], [9, 7, 5], [6, 2, 8]],
      rotate90(matrix)
    )
  end

  def test_rotate_2x4_matrix
    matrix = [
      [3, 7, 4, 2],
      [5, 1, 0, 8]
    ]

    assert_equal(
      [[5, 3], [1, 7], [0, 4], [8, 2]],
      rotate90(matrix)
    )
  end

  def test_rotating_4_times_returns_start_position
    matrix = [
      [1, 5, 8],
      [4, 7, 2],
      [3, 9, 6]
    ]

    assert_equal(
      matrix,
      rotate90(rotate90(rotate90(rotate90(matrix))))
    )
  end
end