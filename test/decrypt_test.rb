require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'

class DecryptTest < Minitest::Test

  def setup
    @decrypt = Decrypt.new
  end

  def test_it_can_split
    assert_equal [",", "a", "s", "h"], @decrypt.split_decryption_string
  end

  def test_it_can_assign_index_value
    assert_equal [28,0,18,7], @decrypt.assign_index_value
  end

  def test_it_can_decide_offsets
    assert_equal 9, @decrypt.decide_offset_method(0)
    assert_equal 2, @decrypt.decide_offset_method(1)
    assert_equal 2, @decrypt.decide_offset_method(2)
    assert_equal 5, @decrypt.decide_offset_method(3)
  end

  def test_it_can_decide_rotation_method
    assert_equal 12, @decrypt.decide_rotation_method(0)
    assert_equal 23, @decrypt.decide_rotation_method(1)
    assert_equal 34, @decrypt.decide_rotation_method(2)
    assert_equal 45, @decrypt.decide_rotation_method(3)
  end

  def test_it_can_subtract_rotate_to_offsets
    assert_equal [7, -25, -18, -43], @decrypt.subtract_rotate_and_offsets
  end

  def test_it_can_subtract_29
    assert_equal [7, 4, 11, 15], @decrypt.subtract_29
  end

  def test_it_can_assign_letters_to_numbers
    assert_equal ["h","e","l","p"], @decrypt.create_encryption
  end

  def test_it_can_create_string
    assert_equal "help", @decrypt.create_encryption_string
  end

end
