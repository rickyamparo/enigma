require 'pry'
require './lib/key'
require './lib/offsets'

class Decrypt
attr_accessor :key, :offsets

  def initialize(output_message)
    @key = Key.new
    @offsets = Offsets.new
    @output_message = output_message
    @map_values_array = []
  end

  def create_map
    @map_values_array = "abcdefghijklmnopqrstuvwxyz0123456789 .,".split(//)
  end

  def split_decryption_string
    local_array = @output_message.split(//)
  end

  def assign_index_value
    local_array = split_decryption_string
    create_map
    local_array.map do |letter|
      @map_values_array.index(letter)
    end
  end

  def decide_offset_method(index)
    #decides which offset number to use
    if index % 4 == 0
      offsets.a_offset
    elsif index % 4 == 1
      offsets.b_offset
    elsif index % 4 == 2
      offsets.c_offset
    elsif index % 4 == 3
      offsets.d_offset
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
    else index % 4 == 3
      key.find_d_rotate
    end
  end

  def add_rotate_to_offset(index)
    if index % 4 == 0
      key.find_a_rotate + offsets.a_offset
    elsif index % 4 == 1
      key.find_b_rotate + offsets.b_offset
    elsif index % 4 == 2
      key.find_c_rotate + offsets.c_offset
    elsif index % 4 == 3
      key.find_d_rotate + offsets.d_offset
    end
  end

  def subtract_rotate_and_offsets
    local_array = assign_index_value
    local_array.map do |number|
      number -= add_rotate_to_offset(local_array.index(number))
    end
  end

  def subtract_39
    local_array = subtract_rotate_and_offsets
    local_array.map do |number|
      while number < 0
        number += 39
      end
      number
    end
  end

  def create_encryption
    #use final number to assign to ltr to get output
    local_array = subtract_39
    local_array.map do |number|
      number = @map_values_array[number]
    end
  end

  def create_encryption_string
    local_array = create_encryption
    local_array.join
  end

end
