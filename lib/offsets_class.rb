require 'pry'

class Offsets

  def initialize
    @date = 020315
  end

# The date of message transmission is also factored into the encryption
# Consider the date in the format DDMMYY, like 020315
# Square the numeric form (412699225) and find the last four digits (9225)
# The first digit is the “A offset” (9)
# The second digit is the “B offset” (2)
# The third digit is the “C offset” (2)
# The fourth digit is the “D offset” (5)
