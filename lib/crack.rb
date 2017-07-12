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

  #find length of coded message
  def 

  #assign ABCD, BCDA, CDAB, DABC according to % 4

  #turn nd.. into index

  #turn last 4 of message into index

  #find difference between the 2 (that's the rotation + offset)

  #turn message into index

  #use modulo 4 to apply ABCD pattern (like mapvaluesarray) to message

  #according to ABCD index, apply difference to index

  #convert index to map_values_array ltrs (ORIGINAL MESSAGE!!)

  #using date, determin offset value

  #use difference between offset and rotation, subtract offset

  #mess with modulo's

  #reverse engineer key (ORIGINAL KEY!!)

end

# def crack
#   while @output_message[-7..-1] != "..end.."
#     decrypt.create_array
#     decrypt.split_decryption_string
#     decrypt.assign_index_value
#     decrypt.decide_offset_method(index)
#     decrypt.decide_rotation_method(index)
#     decrypt.add_rotate_to_offset(index)
#     decrypt.subtract_rotate_and_offsets
#     decrypt.subtract_29
#     decrypt.create_encryption
#     decrypt.create_encryption_string
#   end
#   #range of keys to try [00000..99999]
