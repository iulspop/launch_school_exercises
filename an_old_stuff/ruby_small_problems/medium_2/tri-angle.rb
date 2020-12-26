def triangle(*angles)
  return :invalid if angles.sum != 180 || angles.any? { |angle| angle <= 0 }
  return :right   if angles.any? { |angle| angle == 90 }
  return :acute   if angles.all? { |angle| angle < 90 }
  :obstuse
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid