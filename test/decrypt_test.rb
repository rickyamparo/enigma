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

end
