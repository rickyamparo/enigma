require 'pry'
require './lib/key'
require './lib/offsets'

class Encryption
attr_accessor :find_a_rotate, :find_b_rotate, :find_c_rotate, :find_d_rotate, :key, :map_values_array, :a_offset, :b_offset, :c_offset, :d_offset, :offsets

  def initialize
    @key = Key.new
    @offsets = Offsets.new
    @input_message = "help"
    @map_values_array = []
  end

  def create_array
    @map_values_array = "abcdefghijklmnopqrstuvwxyz .,".split(//)
  end

  def convert_to_number
    #assigns each letter to index according to map_values_array
    local_array = @input_message.split(//)
    self.create_array
    local_array.map do |letter|
      @map_values_array.index(letter)
    end
  end

  def decide_rotation_method(index)
    #decides which rotation number to use
    if index % 4 == 0
      key.find_a_rotate
    elsif index % 4 == 1
      key.find_b_rotate
    elsif index % 4 == 2
      key.find_c_rotate
    else
      key.find_d_rotate
    end
  end

  def add_rotate_number
    #adds rotation # to index
    local_array = convert_to_number
    local_array = local_array.map do |number|
        number += decide_rotation_method(local_array.index(number))
    end
  end

  def decide_offset_method(index)
    if index % 4 == 0
      @offsets.a_offset
    elsif index % 4 == 1
      offsets.b_offset
    elsif index % 4 == 2
      offsets.c_offset
    else
      offsets.d_offset
    end
  end

  def add_offset_number
    local_array = add_rotate_number
    local_array = local_array.map do |number|
        number += decide_offset_method(local_array.index(number))
    end
  end
  #add offset number to index

  def cycling_through
    #%29 the array to come up with final rotation
    local_array = local_array.map do |num|
        num = num % 29
    end
  end

  #use final number to assign to ltr to get output

end
