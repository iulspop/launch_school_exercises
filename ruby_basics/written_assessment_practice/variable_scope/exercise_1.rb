# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a

# What will the following code print and why? Don't run it until you have tried to answer.

=begin
ANSWER
Calling puts on line 8 will print `7` because integer objects are immutable, so the function call on line 7 doesn't
affect the object `a` references.