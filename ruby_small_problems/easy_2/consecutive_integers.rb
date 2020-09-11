number = 0
loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  break if number > 0
  puts "Oops. Not a valid number."
end

operation = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase
  break if ['s', 'p'].include?(operation)
  puts "Oops. Unknown operation."
end

if operation == 's'
  sum = (1..number).sum
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = (1..number).reduce(&:*)
  puts "The product of the integers between 1 and #{number} is #{product}"
end