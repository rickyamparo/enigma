require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'
require './lib/decrypt'

class Crack
attr_accessor :decrypt, :key, :offsets

  def initialize(code, date)
    @key = Key.new
    @offsets = Offsets.new
    @output_message = output_message
    @decrypt = Decrypt.new
    @map_values_array = []
  end

  def create_array
    @map_values_array = "abcdefghijklmnopqrstuvwxyz .,".split(//)
  end

  def blahblah
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

  def throw_up_key
  end

<<<<<<< HEAD
    #we take the key and apply

end
=======
#   #turn nd.. into index (PUT MAP VALUES INTO CRACK!!)
#   def end_index
#     local_array = "nd..".split(//)
#     self.create_array
#     local_array.map do |letter|
#       @map_values_array.index(letter)
#     end
#   end
#
#   #turn last 4 of message into index(CHANGE SAVED VARIABLE)
#     def message_4_index
#       local_array = @output_message.split(//)
#       self.create_array
#       local_array[-4..-1].map do |letter|
#         @map_values_array.index(letter)
#       end
#     end
#
#   #find difference between the 2 (that's the rotation + offset)
#     def nd_index_minus_4_index
#     end
#
#     #find length of coded message
#     def find_length
#       @output_message.length
#     end
#
#     def assign_pattern
#       local_array = nd_index_minus_4_index
#       if @output_message.length % 4 == 0
#         local_array
#       elsif @output_message.length % 4 == 1
#         local_array.rotate
#       elsif @output_message.length % 4 == 2
#         local_array.rotate(2)
#       elsif @output_message.length % 4 == 3
#         local_array.rotate(3)
#       end
#     end
#
#   #turn message into index
#     def message_to_index
#       local_array = @output_message.split(//)
#       self.create_array
#       local_array[-4..-1].map do |letter|
#         @map_values_array.index(letter)
#       end
#     end
#
#   #according to ABCD index, apply difference to index
#     def apply_difference_to_index
#       if a_pattern
#       elsif b_pattern
#       elsif c_pattern
#       elsif d_pattern
#
#     end
#
#   #convert index to map_values_array ltrs (ORIGINAL MESSAGE!!)
#     def convert_message_to_number
#       local_array = apply_difference_to_index
#       local_array.map do |number|
#         number = @map_values_array[number]
#       end
#     end
#
#   #using date, determine offset value
#     def determine_offset_value
#       use offset class to determine offset value
#     end
#
#   #use difference between offset and rotation, subtract offset
#     def find_rotation
#       nd_index_minus_4_index - determine_offset_value = rotation
#     end
#
#   #mess with modulo's
#     def
#     end
#
#     def find_key
#       a =  b =  c =  d =
#       this_array=[a,b,c,d]
#       key_array = []
#       this_array.separate(separates every number)
#       this_array.find_all.evens do |number|
#         key_array << number
#       end
#       key_array << this_array.last_4
#       key_array.join
#     end
#
# end
>>>>>>> c39b827c4ab579f138246859df9cda3549086a86
