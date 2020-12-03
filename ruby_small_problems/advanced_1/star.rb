def star(size)
  height_from_center = ((size - 3) / 2)
  print_row = Proc.new do |num|
    space = ' ' * num
    puts ('*' + space + '*' + space + '*').center(size)
  end

  (0..height_from_center).reverse_each(&print_row)
  puts ('*' * size)
  (0..height_from_center).each(&print_row)
end

star(7)
puts '', ''
star(10)