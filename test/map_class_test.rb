require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/map_class'

class MapTest < Minitest::Test

  def test_it_can_split
    m = Map.new

    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " ", ".", ","], m.create_array
  end

end
