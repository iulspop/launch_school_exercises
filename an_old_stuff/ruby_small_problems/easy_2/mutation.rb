# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
The `puts` call on line 8 with the argument `array2` will print the names 
`'Curly', 'Shemp', 'Chico'` in all caps among the other names. On line 6,
the elements from `array1` are appended to `array2`, so the two arrays `array1` and 
`array2` have identical elements. That is, they reference the same
objects. So, when we call the mutating method `upcase!` on certain elements of 
`array1`, the changes are also reflected in `array2`, sinces they refer to the
same objects. Finally, the puts call on line 8 with the argument `array2` will
print the values changed on line 7.
=end