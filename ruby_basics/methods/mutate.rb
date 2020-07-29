a = [1, 2, 3]

def mutate(array)
  array.pop
end

puts a
mutate(a)
puts a

b = [1, 2, 3]

def no_mutate(array)
  array.last
end

puts b
no_mutate(b)
puts b