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

end
