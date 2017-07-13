require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test

  def setup
    @crack = Crack.new(",ash")
  end

def test_it_can_create_map
  assert_instance_of Array, @crack.create_array
end

def test_it_can_create_decrypt
  assert_instance_of Decrypt, @crack.decrypt
end

def test_it_can_run_decrypt
  assert_instance_of String, @crack.decrypt.create_encryption_string
  binding.pry
end

end
