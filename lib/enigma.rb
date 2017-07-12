require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'
require './lib/decrypt'
require './lib/crack'

class Enigma
attr_accessor

  def initialize
    @encrypt = Encrypt.new
    @decrypt = Decrypt.new
    @crack = Crack.new
  end

  def encrypt(input_message, key, date)

  end

  def decrypt(output_message, key, date)

  end

  def crack(output_message, date)

  end
