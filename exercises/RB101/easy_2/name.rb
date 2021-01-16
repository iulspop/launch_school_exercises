=begin
What does this print and why?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

The `puts` call on line 7 with the arguments `name` and `save_name` will print
'BOB' and 'BOB' on seperate lines. Both variables `name` and `save_name`
reference the same String object `Bob`. When the destructive method `upcase!`
is called on `name` on line 6, it mutates the same object that `save_name`
references. The result is that both arguments to the `puts` call on line 7
evaluate to "BOB".

=end
