=begin
Write a method that can rotate the last n digits of a number. For example:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
rotate_rightmost_digits(735291, 6) == 352917
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.


number, n
number => array of integers (digits)
rotated digits digits[-1 - n..-1]
digits[0..digits.size - n - 1] + rotated_digits
=end

def rotate_array(array)
  new_array = array.dup
  new_array.push(new_array.shift)
end

def rotate_rightmost_digits(number, n)
  digits = number.digits.reverse
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917