require 'minitest/autorun'
require_relative 'merge_sort'

class TestMergeSort < Minitest::Test
  def test_sorts_array_with_four_integers
    assert_equal [1, 5, 7, 9], merge_sort([9, 5, 7, 1])
  end

  def test_sorts_array_with_two_integers
    assert_equal [3, 5], merge_sort([5, 3])
  end

  def test_sorts_array_with_five_integers
    assert_equal [1, 2, 4, 6, 7], merge_sort([6, 2, 7, 1, 4])
  end

  def test_sorts_array_with_strings
    assert_equal %w(Alice Bonnie Kim Pete Rachel Sue Tyler),
                 merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))
  end
end