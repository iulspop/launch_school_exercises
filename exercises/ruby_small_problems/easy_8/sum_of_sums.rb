=begin

0, 1
0, 2
until = size

=end


def sum_of_sums(numbers)
  (1..numbers.size).each_with_object([]) do |size, sums|
    sums << numbers.slice(0, size).reduce(&:+)
  end.reduce(&:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35