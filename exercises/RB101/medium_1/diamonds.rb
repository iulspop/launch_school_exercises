=begin
Diamonds!
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

requirements:
- odd integers only

number: n

loop
  output 1
en

loop from 1 to n |x|
  output x centered spaces to n

loop n - 1 to 1 steps of two

=end

def diamond(n)
  output_line = lambda { |size| puts ('*' * size).center(n) }
  1.step(n, 2, &output_line)
  (n - 2).step(1, -2, &output_liney)
end

def diamond(n)
  output_line = lambda do |size|
    puts ('*' * size).center(n).gsub(/(?<=\*)(\*)(?=\*)/, ' ')
  end
  1.step(n, 2, &output_line)
  (n - 2).step(1, -2, &output_line)
end

diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *