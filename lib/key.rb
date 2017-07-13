require 'pry'

class Key
attr_accessor :key_value

  def initialize
    @key_value = random_key_generator
  end

  def random_key_generator
    key = rand(0..99999).to_s
    key.rjust(5, "0")
  end

  def find_a_rotate
    a = @key_value.split('')
    (a[0].to_i * 10) + a[1].to_i
  end

  def find_b_rotate
    a = @key_value.split('')
    (a[1].to_i * 10) + a[2].to_i
  end

  def find_c_rotate
    a = @key_value.split('')
    (a[2].to_i * 10) + a[3].to_i
  end

  def find_d_rotate
    a = @key_value.split('')
    (a[3].to_i * 10) + a[4].to_i
  end

end
