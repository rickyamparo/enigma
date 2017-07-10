require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offsets'

class OffsetsTest < Minitest::Test

  def setup
    @off = Offsets.new
  end

  def test_it_returns_last_4_numbers
    assert_equal ["9","2","2","5"], @off.find_last_4_digits
  end

  def test_offsets
    assert_equal 9, @off.a_offset
    assert_equal 2, @off.b_offset
    assert_equal 2, @off.c_offset
    assert_equal 5, @off.d_offset
  end

end
