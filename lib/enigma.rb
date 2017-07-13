require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'
require './lib/decrypt'
require './lib/crack'

class Enigma
attr_accessor :encrypt, :decrypt, :crack

  def initialize
    @encrypt = nil
    @decrypt = nil
    @crack = "Crack is whack"
  end

  def encrypt(input_message)
    @encrypt = Encrypt.new(input_message)
    @encrypt.create_encryption_string
  end

  def decrypt(output_message, key)
    k = Key.new
    k.key_value = key
    @decrypt = Decrypt.new(output_message, k)
    @decrypt.create_encryption_string
  end

  # def crack(output_message, date)

end
