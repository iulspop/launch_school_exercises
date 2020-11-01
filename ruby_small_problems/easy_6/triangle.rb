def triangle(size)
  (1..size).each { |num| puts (' ' * (size - num) + '*' * num) }
end

triangle(9)