require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

attr_reader :key

  def setup
    @key = Key.new
  end

  def test_key_is_5_digits
    assert_includes (0..99999), key.key_value.to_i
  end

  def test_it_can_find_a_rotate
    assert_includes (0..99), @key.find_a_rotate.to_i
  end

  def test_it_can_find_b_rotate
    assert_includes (0..99), @key.find_b_rotate
  end

  def test_it_can_find_c_rotate
    assert_includes (0..99), @key.find_c_rotate
  end

  def test_it_can_find_d_rotate
    assert_includes (0..99), @key.find_d_rotate
  end

end
