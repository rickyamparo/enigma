require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'

class DecryptTest < Minitest::Test

  def setup
    @decrypt = Decrypt.new(",ash")
  end

  def test_it_can_create_map
    alphabet_soup = ["a", "b", "c", "d", "e",
                     "f", "g", "h", "i", "j",
                     "k", "l", "m", "n", "o",
                     "p", "q", "r", "s", "t",
                     "u", "v", "w", "x", "y",
                     "z", "0", "1", "2", "3",
                     "4", "5", "6", "7", "8",
                     "9", " ", ".", ","]
    assert_equal alphabet_soup, @decrypt.create_map
  end

  def test_it_can_split
    assert_instance_of Array, @decrypt.split_decryption_string
    assert_instance_of String, @decrypt.split_decryption_string[0]
  end

  def test_it_can_assign_index_value
    assert_instance_of Array, @decrypt.assign_index_value
    assert_instance_of Fixnum, @decrypt.assign_index_value[0]
  end

  def test_it_can_decide_offsets
    @decrypt.offsets.a_offset
    assert_equal 4, @decrypt.decide_offset_method(0)
    assert_equal 0, @decrypt.decide_offset_method(1)
    assert_equal 8, @decrypt.decide_offset_method(2)
    assert_equal 9, @decrypt.decide_offset_method(3)
  end

  def test_it_can_decide_rotation_method
    assert_includes (0..99), @decrypt.decide_rotation_method(0)
    assert_includes (0..99), @decrypt.decide_rotation_method(1)
    assert_includes (0..99), @decrypt.decide_rotation_method(2)
    assert_includes (0..99), @decrypt.decide_rotation_method(3)
  end

  def test_it_can_subtract_rotate_to_offsets
    assert_instance_of Array, @decrypt.subtract_rotate_and_offsets
  end

  def test_it_can_subtract_29
    assert_instance_of Array, @decrypt.subtract_29
  end

  def test_it_can_assign_letters_to_numbers
    assert_instance_of Array, @decrypt.create_encryption
  end

  def test_it_can_create_string
    assert_instance_of String, @decrypt.create_encryption_string
  end

end
