def string_to_integer(string)
  string.chars.map { |char| char.ord - 48 }
  .reduce(0) { |number, digit| number * 10 + digit }
end

def string_to_signed_integer(string)
  integer = string_to_integer(string.gsub(/[-+]/, ''))
  string[0].match?('-') ? -integer : integer
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
