require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encrypt = Encryption.new
  end

  def test_it_can_split
      alphabet_soup = ["a", "b", "c", "d", "e",
                       "f", "g", "h", "i", "j",
                       "k", "l", "m", "n", "o",
                       "p", "q", "r", "s", "t",
                       "u", "v", "w", "x", "y",
                       "z", " ", ".", ","]

      assert_equal alphabet_soup, @encrypt.create_array
  end

  def test_it_decides_rotation_method
    assert_equal 12, @encrypt.decide_rotation_method(0)
    assert_equal 23, @encrypt.decide_rotation_method(1)
    assert_equal 34, @encrypt.decide_rotation_method(2)
    assert_equal 45, @encrypt.decide_rotation_method(3)
  end

  def test_it_can_add_rotation_to_number
    assert_equal [19,27,45,60], @encrypt.add_rotate_number
  end

  def test_it_can_decide_offsets
    assert_equal 9, @encrypt.decide_offset_method(0)
    assert_equal 2, @encrypt.decide_offset_method(1)
    assert_equal 2, @encrypt.decide_offset_method(2)
    assert_equal 5, @encrypt.decide_offset_method(3)
  end

  def test_it_can_add_offsets
    assert_equal [28,29,47,65], @encrypt.add_offset_number
  end

  def test_it_can_cycle_through
    assert_equal [28,0,18,7], @encrypt.cycling_through
  end
  
end
