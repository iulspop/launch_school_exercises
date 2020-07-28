def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts ">> Please enter a positive or negative integer:"
  num_string_1 = gets.chomp

  unless valid_number?(num_string_1)
    next puts "Invalid input. Only non-zero integers are allowed."
  end

  num_string_2 = nil
  loop do
    puts ">> Please enter another positive or negative integer"
    num_string_2 = gets.chomp

    unless valid_number?(num_string_2)
      next puts "Invalid input. Only non-zero integers are allowed."
    end

    break
  end

  num1 = num_string_1.to_i
  num2 = num_string_2.to_i

  if (num1 < 0 && num2 < 0) || (num1 > 0 && num2 > 0)
    puts ">> Sorry. One integer must be positive, one must be negative."
    puts ">> Please start over."
    next
  end

  sum = num1 + num2
  break puts "#{num1} + #{num2} = #{sum}"
end