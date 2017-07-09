require 'pry'

class Key

  def initialize
    @key_value = 12345
    @map_values_array = []
    @input_message = "help"
  end

  def create_array
    @map_values_array = "abcdefghijklmnopqrstuvwxyz .,".split(//)
  end

  def ltr_to_number
    local_array = @input_message.split(//)
    self.create_array
    num_value_a = @map_values_array.find_index(local_array[0])
    num_value_b = @map_values_array.find_index(local_array[1])
    num_value_c = @map_values_array.find_index(local_array[2])
    num_value_d = @map_values_array.find_index(local_array[3])
    local_array = [num_value_a, num_value_b, num_value_c, num_value_d]
  end

  def number_to_ltr
    local_array = self.ltr_to_number
    local_array[0] += self.find_a_rotate
    local_array[1] += self.find_b_rotate
    local_array[2] += self.find_c_rotate
    local_array[3] += self.find_d_rotate
    # local_array.map do |num|
    #   num = num % 29
    # end
    local_array = []
    local_array <<  @map_values_array[19]
    local_array <<  @map_values_array[27]
    local_array <<  @map_values_array[16]
    local_array <<  @map_values_array[2]
  end

  def find_a_rotate
    a = @key_value.to_s.split('')
    rotation_number = (a[0].to_i * 10) + a[1].to_i
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
