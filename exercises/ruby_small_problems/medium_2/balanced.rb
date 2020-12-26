=begin

Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

input: string
output: is boolean

req:
- return true if each ( has a )
- ) has to follow a (, not the other way
- empty? string
- only parentheses?
- only strings

'())'
'()'

Algorithm:
filter the string with only parentheses
match (....) replace with ''
  (..)
repeat until no match,
then check is empty?

=end

def balanced?(str)
  str = str.delete '^()'
  while str.gsub!('()', ''); end
  str.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false