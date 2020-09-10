=begin
1. initialize empty hash
2. loop through each array element
   1. check if hash has a key equal to element
   2. if true, increment value
   3. else, create key, set value to 1
3. loop through hash and pretty print
=end

def count_occurrences(array)
  occurrences = {}
  array.each do |el|
    if occurrences.key?(el) then occurrences[el] += 1
    else occurrences[el] = 1 end
  end
  occurrences.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
