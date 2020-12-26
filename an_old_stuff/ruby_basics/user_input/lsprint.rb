loop do
  puts ">> How many output line do you want? Enter a number >= 3"
  number_of_lines = gets.to_i

  if number_of_lines < 3
    puts "That's not enough lines."
    next
  end

  number_of_lines.times { puts "Launch School is the best!" }
  break
end
