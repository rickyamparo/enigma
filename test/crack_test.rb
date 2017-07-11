require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test

  def setup
    @crack = Crack.new
  end

  def test_it_can_split
    assert_equal ["n", "d", ".", "."], @crack.split_code_string
  end

  def test_it_can_assign_index_value
    assert_equal [13,3,27,27], @crack.assign_index_value
  end

end
