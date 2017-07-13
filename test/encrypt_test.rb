require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new("help")
    @encrypt.randomize_key
  end

  def test_it_can_split
      alphabet_soup = ["a", "b", "c", "d", "e",
                       "f", "g", "h", "i", "j",
                       "k", "l", "m", "n", "o",
                       "p", "q", "r", "s", "t",
                       "u", "v", "w", "x", "y",
                       "z", "0", "1", "2", "3",
                       "4", "5", "6", "7", "8",
                       "9", " ", ".", ","]

      assert_equal alphabet_soup, @encrypt.create_map
  end

  def test_it_can_convert_to_number
    assert_equal [7, 4, 11, 15], @encrypt.convert_to_number
  end

  def test_it_decides_rotation_method
    assert_includes (0..99), @encrypt.decide_rotation_method(0)
    assert_includes (0..99), @encrypt.decide_rotation_method(1)
    assert_includes (0..99), @encrypt.decide_rotation_method(2)
    assert_includes (0..99), @encrypt.decide_rotation_method(3)
  end

  def test_it_can_add_rotation_to_number
    assert_instance_of Array, @encrypt.add_rotate_number
    assert_instance_of Fixnum, @encrypt.add_rotate_number[0]
  end

  def test_it_can_decide_offsets
    assert_equal 4, @encrypt.decide_offset_method(0)
    assert_equal 0, @encrypt.decide_offset_method(1)
    assert_equal 8, @encrypt.decide_offset_method(2)
    assert_equal 9, @encrypt.decide_offset_method(3)
  end

  def test_it_can_add_offsets
    assert_instance_of Array, @encrypt.add_offset_number
    assert_instance_of Fixnum, @encrypt.add_offset_number[0]
  end

  def test_it_can_cycle_through
    assert_includes (0..39), @encrypt.cycling_through[0]
    assert_includes (0..39), @encrypt.cycling_through[1]
    assert_includes (0..39), @encrypt.cycling_through[2]
    assert_includes (0..39), @encrypt.cycling_through[3]
  end

  def test_it_can_encrypt
    assert_instance_of Array, @encrypt.create_encryption
    assert_instance_of String, @encrypt.create_encryption[0]
  end

  def test_encrypt_turns_into_string
    assert_instance_of String, @encrypt.create_encryption_string
  end

end
