def string_to_integer(string)
  string
  .chars
  .map { |char| char.ord - 48 }
  .reduce(0) { |number, digit| number * 10 + digit }
end

string_to_integer('4321') #== 4321
string_to_integer('570')  #== 570
string_to_integer('0123456789')  #== 570

def hexadecimal_to_integer(hex)
  decimal_digits = hex.upcase.chars.map do |char|
    'ABCDEF'.include?(char) ? char.ord - 55 : char.ord - 48
  end
  decimal_digits.reduce(0) { |number, digit| number * 16 + digit }
end

p hexadecimal_to_integer('4D9f') == 19871