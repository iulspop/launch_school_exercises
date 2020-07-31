stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green' then puts "Go!"
  when 'yellow' then puts "Slow down!"
  when 'red' then puts "Stop!"
end

if stoplight == 'green' then puts "Go!" end
if stoplight == 'yellow' then puts "Slow down!" end
if stoplight == 'red' then puts "Stop!" end