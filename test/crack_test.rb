require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test

  def setup
    @crack = Crack.new
  end

def test_it_can_end_index
  assert_instance_of ARRAY, @crack.end_index
end

end
