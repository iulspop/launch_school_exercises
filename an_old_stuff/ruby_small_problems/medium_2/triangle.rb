=begin
- valid triangle?


=end

def triangle(*lengths)
  lengths.sort!
  return :invalid if lengths[0, 2].sum <= lengths[2]
  return :invalid if lengths.any? { |length| length <= 0 }

  if lengths.all? { |side| side == lengths[0] }
    :equilateral
  elsif lengths.combination(2).to_a.any? { |(side1, side2)| side1 == side2 }
    :isosceles
  else :scalene end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid