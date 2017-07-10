require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encrypt = Encryption.new
  end

  def test_it_decides_rotation_method
    assert_equal 12, @encrypt.decide_rotation_method(0)
    assert_equal 23, @encrypt.decide_rotation_method(1)
    assert_equal 34, @encrypt.decide_rotation_method(2)
    assert_equal 45, @encrypt.decide_rotation_method(3)
  end

end