def center_of(string)
  center_index = string.size / 2
  string.size.even? ? string[center_index - 1, 2] : string[center_index]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'