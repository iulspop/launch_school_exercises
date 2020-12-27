require 'minitest/autorun'
require_relative 'hi'

class TestHi < MiniTest::Test
  def test_hi
    assert_equal(
      nil,
      hi
    )
  end
end