require 'minitest/autorun'
require_relative '../lib/play'

class TestMutatingTransposeMethod < MiniTest::Test
  def test_transpose_3x3_array
    matrix = [
      [1, 2, 3],
      [3, 4, 5],
      [6, 7, 8]
    ]

    assert_equal(
      [[1, 3, 6],[2, 4, 7],[3, 5, 8]],
      transpose!(matrix)
    )
  end

  def test_transpose_3x3_array
    matrix = [
      [1, 5, 8],
      [4, 7, 2],
      [3, 9, 6]
    ]

    assert_equal(
      [[1, 4, 3], [5, 7, 9], [8, 2, 6]],
      transpose!(matrix)
    )
  end
end