numbers = []
counts = ['1st', '2nd', '4th', '5th']

counts.each do |count|
  puts "==> Enter the #{count} number:"
  number = gets.chomp.to_i
  numbers.push number
end

puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}"
else
  puts "The number #{last_number} does not appear in #{numbers}"
end
