require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'
require './lib/decrypt'

class Crack
attr_accessor :decrypt, :key, :offsets

  def initialize(code)
    @key = Key.new
    @offsets = Offsets.new
    @output_message = output_message
    @decrypt = Decrypt.new
    @map_values_array = []
  end

  def crack
    while @output_message[-7..-1] != "..end.."
      decrypt.create_array
      decrypt.split_decryption_string
      decrypt.assign_index_value
      decrypt.decide_offset_method(index)
      decrypt.decide_rotation_method(index)
      decrypt.add_rotate_to_offset(index)
      decrypt.subtract_rotate_and_offsets
      decrypt.subtract_29
      decrypt.create_encryption
      decrypt.create_encryption_string
    end
    #range of keys to try [00000..99999]

    #we take the key and apply

end
