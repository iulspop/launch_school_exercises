require 'minitest/autorun'
require_relative '../lib/play'

class Test < MiniTest::Test
  def test_
    assert_equal(
      [],
      tran()
    )
  end

end