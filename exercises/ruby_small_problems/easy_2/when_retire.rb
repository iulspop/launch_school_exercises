puts '>> What is your age?'
age = gets.chomp.to_i

puts '>> At What age would you like to retire?'
retirement = gets.chomp.to_i

current_year = Time.now.year

working_years = retirement - age

retirement_year = current_year + working_years

puts ">> It's #{current_year}. You will retire in #{retirement_year}\n" + \
     ">> You have only #{working_years} years of work to go!"