require 'pry'
require './lib/encryption'
require './lib/key'

class Offsets
attr_accessor :date, :a_offset, :b_offset, :c_offset, :d_offset

  def initialize
    @date = '020315'
    #DDMMYY
    @last_4 = []
  end

  # def date_squared
  #   @date.to_i ** 2
  # end

  def find_last_4_digits
    date_squared = @date.to_i ** 2
    date_array = date_squared.to_s.split(//)
    @last_4 = date_array[-4..-1]
  end

  def a_offset
    find_last_4_digits
    @last_4[0].to_i
  end
  #once the method, which reassigns the instance variable, is called, it changes that variable permenantly

  def b_offset
    @last_4[1].to_i
  end

  def c_offset
    @last_4[2].to_i
  end

  def d_offset
    @last_4[3].to_i
  end

end
