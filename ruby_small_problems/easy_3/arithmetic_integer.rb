num1 = ''
loop do
  puts "==> Enter the first number:"
  num1 = gets.chomp.to_i
  break
end

num2 = ''
loop do
  puts "==> Enter the second number:"
  num2 = gets.chomp.to_i
  break
end

puts "==> #{num1} + #{num1} = #{num1 + num2}"
puts "==> #{num1} - #{num1} = #{num1 - num2}"
puts "==> #{num1} * #{num1} = #{num1 * num2}"
puts "==> #{num1} / #{num1} = #{num1 / num2}"
puts "==> #{num1} % #{num1} = #{num1 % num2}"
puts "==> #{num1} ** #{num1} = #{num1 ** num2}"