def string_to_integer(string)
  string.chars.map { |char| char.ord - 48 }
  .reduce(0) { |number, digit| number * 10 + digit }
end

def string_to_signed_integer(string)
  is_negative = string[0].match? '-'
  integer = string_to_integer(string.gsub(/[-+]/, ''))
  is_negative ? -integer : integer
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

