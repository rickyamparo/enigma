require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'
require './lib/decrypt'

class Crack
attr_accessor :encrypt

  def initialize
    @code = "nd.."
    @encrypt = Encrypt.new
  end

  def split_code_string
    local_array = @code.split(//)
  end

  def assign_index_value
    local_array = split_code_string
    encrypt.create_array
    local_array.map do |letter|
      encrypt.map_values_array.index(letter)
    end
  end

  
end
