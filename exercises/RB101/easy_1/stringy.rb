def stringy(size, start_digit = '1')
  string = ''
  second_digit = start_digit == '1' ? '0' : '1'
  size.times { string += string.length.even? ? start_digit : second_digit }
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
