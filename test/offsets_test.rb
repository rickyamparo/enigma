require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offsets'

class OffsetsTest < Minitest::Test

  def setup
    @off = Offsets.new
  end

  def test_it_can_get_the_date
    assert_equal "120717", @off.date
  end

  def test_it_can_square_date
    assert_equal 14572594089, @off.square_date
  end

  def test_it_returns_last_4_numbers
    assert_equal ["4","0","8","9"], @off.find_last_4_digits
  end

  def test_offsets
    assert_equal 4, @off.a_offset
    assert_equal 0, @off.b_offset
    assert_equal 8, @off.c_offset
    assert_equal 9, @off.d_offset
  end

end
