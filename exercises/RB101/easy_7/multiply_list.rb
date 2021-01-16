def multiply_list(numbers1, numbers2)
  numbers1.zip(numbers2).map { |arr| arr.reduce(&:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]