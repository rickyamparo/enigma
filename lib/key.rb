require 'pry'

class Key
attr_accessor :find_a_rotate, :find_b_rotate, :find_c_rotate, :find_d_rotate, :key_value

  def initialize
    @key_value = 12345
  end

  def find_a_rotate
    a = @key_value.to_s.split('')
    (a[0].to_i * 10) + a[1].to_i
  end

  def find_b_rotate
    a = @key_value.to_s.split('')
    (a[1].to_i * 10) + a[2].to_i
  end

  def find_c_rotate
    a = @key_value.to_s.split('')
    (a[2].to_i * 10) + a[3].to_i
  end

  def find_d_rotate
    a = @key_value.to_s.split('')
    (a[3].to_i * 10) + a[4].to_i
  end

end
