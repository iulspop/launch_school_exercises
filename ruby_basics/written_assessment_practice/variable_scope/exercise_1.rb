# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a

# What will the following code print and why? Don't run it until you have tried to answer.

=begin
ANSWER
Calling puts on line 8 will print `7` because integers in Ruby are immutable, so the function call on line 7 cannot
affect the object `a` references. Thus, `a` is still equal to 7 at the time of the `puts` invocation.

=== ANSWER REWRITE ===
Reassignment, including assignment operators like `+=` do not mutate objects.
Instead, it binds the variable to a new object.
That is, `+=` sets the varaible to point to a new object.
Since line 4 binds `b` to an new object, the object pointed to by `a` remains unchanged.
Thus, `a` is stil equal to 7 at the time of the `puts` call.
 

=end