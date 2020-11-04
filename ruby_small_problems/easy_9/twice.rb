=begin
even number of digits
two halfs are equal

digits (array)
[] == []

if double
  return number
else
  double number

=end

def double_number?(number)
  digits = number.digits
  half_index = digits.size / 2
  digits[0...half_index] == digits[half_index..-1]
end

p double_number?(103103)

def twice(number)
  double_number?(number) ? number : number * 2
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10