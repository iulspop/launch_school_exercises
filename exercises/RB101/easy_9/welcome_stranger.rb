def greetings(names, job_info)
  name = names.join(' ')
  title = job_info.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{title} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.