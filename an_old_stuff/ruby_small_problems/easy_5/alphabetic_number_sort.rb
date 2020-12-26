=begin
input: array of integers between 0 and 19
output: array sorted by english words of number as in the alphabetical order.

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen


array.sort_by []
=end

WORDS = %w[zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

def alphabetic_number_sort(numbers)
  numbers.sort { |num1, num2| WORDS[num1] <=> WORDS[num2] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]