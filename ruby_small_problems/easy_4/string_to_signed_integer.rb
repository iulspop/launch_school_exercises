def string_to_signed_integer(string)
  is_negative = string[0].match? '-'

  integer = string.gsub(/[-+]/, '').chars
  .map { |char| char.ord - 48 }
  .reduce(0) { |number, digit| number * 10 + digit }

  is_negative ? -integer : integer
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100