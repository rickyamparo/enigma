require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @e = Enigma.new
  end

  def test_it_can_create_string
    assert_instance_of String, @e.encrypt("help")
  end

end
