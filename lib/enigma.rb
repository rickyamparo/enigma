require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'
require './lib/decrypt'
require './lib/crack'

class Enigma
attr_accessor

  def initialize
    @encrypt = nil
    @decrypt = nil
    @crack = nil
  end

  def encrypt(input_message)
    @encrypt = Encrypt.new(input_message)
    @encrypt.create_encryption_string
  end
  #
  # def decrypt(output_message, key, date)
  #
  # end
  #
  # def crack(output_message, date)

end
