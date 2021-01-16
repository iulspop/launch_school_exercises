# What will the following code print, and why? Don't run the code until you have tried to answer.

# a = 7

# def my_value(a)
#   a += 10
# end

# my_value(a)
# puts a

=begin
The `puts` call on line 10 will print `7`.

When the global variable `a` is passed as an argument to the `my_value` method call on line 9,
the local parameter `a` is assigned to the same object as global variable `a`.
Then, the increment operator on line 6 assigns the local parameter `a` to a new object,
leaving the object referenced my global variable `a` unchanged.

Also, the argument to the `puts` call on line 10 refers to the global variable `a` and not the local parameter `a`, because
method paramter's are scoped to their block and are not available outside the method block.
=end