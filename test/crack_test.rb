require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/crack'

class CrackTest < Minitest::Test

  def setup
    @crack = Crack.new
  end


end
