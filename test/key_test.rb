require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new
  end

  def test_it_can_find_a_rotate
    assert_equal 12, @key.find_a_rotate
  end

  def test_it_can_find_b_rotate
    assert_equal 23, @key.find_b_rotate
  end

  def test_it_can_find_c_rotate
    assert_equal 34, @key.find_c_rotate
  end

  def test_it_can_find_d_rotate
    assert_equal 45, @key.find_d_rotate
  end

end
