require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_class'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new
  end

  def test_it_can_split
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", ".", ","], @key.create_array
  end

  def test_it_can_find_rotate_number
    assert_equal 12, @key.find_a_rotate
    assert_equal 23, @key.find_b_rotate
    assert_equal 34, @key.find_c_rotate
    assert_equal 45, @key.find_d_rotate
  end

  def test_it_can_ltr_to_number
    assert_equal [7,4,11,15], @key.ltr_to_number
  end

  def test_it_can_number_to_ltr
    assert_equal ["t", ".", "q", "c"], @key.number_to_ltr
  end

end
