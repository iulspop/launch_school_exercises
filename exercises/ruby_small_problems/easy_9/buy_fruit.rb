def buy_fruit(shopping_list)
  shopping_list.map { |(item, number)| [item] * number }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]