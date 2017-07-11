require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'

class Decrypt
attr_accessor :encrypt, :key, :offsets

  def initialize
    @encrypt = Encrypt.new
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

end
