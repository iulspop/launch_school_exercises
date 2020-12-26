loop do
  puts '>> How many output lines do you want? ' \
       'Enter a number >= 3: (Q to quit)'
  
  input_string = gets.chomp.downcase
  break if input_string == "q"

  number_of_lines = input_string.to_i
  next puts ">> That's not enough lines." if number_of_lines < 3

  number_of_lines.times { puts 'Launch School is the best!' }
end
