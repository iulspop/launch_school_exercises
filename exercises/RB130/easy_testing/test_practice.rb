require 'minitest/autorun'

describe 'Hello!' do
  it 'checks if odd' do
    _(5.odd?).must_equal true
  end

  it 'checks xyx' do
    _('xYz'.downcase).must_equal 'xyz'
  end

  it 'checks nil' do
    _(nil).must_be_nil
  end

  it 'checks list is not empty' do
    _([1]).wont_be_empty
  end
end

class Hello < Minitest::Test
  def test_odd?
    assert(5.odd?)
  end

  def test_xyz
    assert_equal('xyz', 'Xyz'.downcase)
  end

  def test_nil
    assert_nil(nil)
  end

  def test_list_is_empty
    refute_empty [1]
  end

  def test_list_includes
    assert_equal ''
  end
end