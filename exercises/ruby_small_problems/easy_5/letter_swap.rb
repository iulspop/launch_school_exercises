def swap(string)
  string.split
  .map { |string| string.gsub(/(^.)(.*?)(.$)/, '\3\2\1' ) }.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'