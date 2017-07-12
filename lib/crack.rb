require 'pry'
require './lib/key'
require './lib/offsets'
require './lib/encrypt'
require './lib/decrypt'

class Crack
attr_accessor :encrypt, :decrypt

  def initialize(code)
    @code = code
    @encrypt = Encrypt.new
    @decrypt = Decrypt.new
  end

#while code[-7..-1] != ..end..
#keep decrypting

end
