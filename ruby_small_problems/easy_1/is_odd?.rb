=begin
input: integer
output: boolean

requirements:
1. 0 is not odd
2. take the absolute of negatie numbers
3. only integers accepted

mental model:
check if absolute value of integer is odd
  then return true
  else return false

algorithm:
  1. absolute value of integer modulo 2 != zero
=end

def is_odd?(int)
  int.abs % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true