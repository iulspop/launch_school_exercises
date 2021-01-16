require 'minitest/autorun'
require_relative 'egyptian_fraction'

class TestEgyptianMethod < Minitest::Test
  def test_produces_egyptian_fraction_from_rational_number
    denominators = egyptian(Rational(4, 5))
    expect = [2, 4, 20]
    assert_equal(expect, denominators)
  end
end

class TestUnegyptianMethod < Minitest::Test
  def test_produces_rational_number_from_egyptian_fraction
    rational_sum = unegyptian(
      [2, 4, 20]
    )
    assert_equal(Rational(4, 5), rational_sum)
  end
end