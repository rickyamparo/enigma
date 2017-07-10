require 'pry'
require './lib/encryption'
require './lib/key'

class Offsets
attr_accessor :date

  def initialize
    @date = '020315'
    #DDMMYY
  end

  # def date_squared
  #   @date.to_i ** 2
  # end

#find the last 4 digits
  def find_last_4_digits
    date_squared = @date.to_i ** 2
    date_array = date_squared.to_s.split(//)
    date_array[-4..-1]
  end

end


#1st digit is the a offset, etc.
