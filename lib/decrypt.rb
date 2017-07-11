require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'

class Decrypt
attr_accessor :encrypt, :key, :offsets

  def initialize
    @encrypt = Encrypt.new
    @key = Key.new
    @offsets = Offsets.new
    @output_message = ",ash"
  end

  def split_decryption_string
    local_array = @output_message.split(//)
  end

  def assign_index_value
    local_array = split_decryption_string
    encrypt.create_array
    local_array.map do |letter|
      encrypt.map_values_array.index(letter)
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

@other_variable = 23
variable = 20
  def subtract_29
    variable = 15

    variable + @other_variable
  end



end
  #
  # def minus_offset_number
  #   local_array = unmodulo
  #   local_array = local_array.map do |number|
  #       number -= decide_offset_method(local_array.index(number))
  #   end
  # end
  #
  #
  #
  # def minus_rotate_number
  #   local_array = convert_to_number
  #   local_array = local_array.map do |number|
  #       number += decide_rotation_method(local_array.index(number))
  #   end
  # end
  #
  # def number_to_letter
  # end
