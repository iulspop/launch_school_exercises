def count_occurrences(array)
  occurrences = {}
  array.uniq.each { |el| occurrences[el] = array.count(el) }
  occurrences.each { |element, count| puts "#{element} => #{count}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
