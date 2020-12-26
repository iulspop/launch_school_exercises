# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a

# What will the following code print and why? Don't run it until you have tried to answer.

=begin
ANSWER
When the `puts` method is called and we pass `a` as an argument,
`puts` will print to console `7`,
because `a` has not been reasigned during function exection and 
the integer object it points to cannot be mutated.

DETAILED EXPLANATION
On line 1, the global variable `a` is initialized and bound to the integer 7.
Integers in Ruby are immutable values. So, the integer object `a` references cannot be mutated.
Unless `a` is reassigned to another object, it will continue to point to the integer 7.
Since it isn't reassigned by the time the `puts` method is called on line 8 with `a` passed as an argument,
`puts` will print `7`.
=end


























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



























=begin
ANSWER THE QUESTION
#On line 74 we are calling the puts method and passing in `a` as an argument. This will print out 7 to the console#

On line 74, the `puts` method is invoked with the passed in argument `a`. It will print 7 to console because:
  1) Integer objects are immutable in Ruby
  2) Reassignment operations never mutate, but create a new one

EXPLAIN IN DETAIL
Calling the `my_value` method on line 73 makes the parameter `b` to point to the same object as `a`, because `a` was passed as an argument to the method call.
On line 70, we reassign the parameter `b` which assigns it to a new object.
That is, `b` no longer references the same object as `a`.
Therefore, the object `a` references remains unchanged.
So, calling puts on line 74 prints 7.
=end

#On line 67 we initialize local variable `a` and assign it to integer object 7.
  
#On line 73, we invoke the `my_value` method and pass in local variable `a` as an argument
  
#Within the `my_value` method, `a` is reassigned to the integer object `a + 10`. Reassignment creates a new object, which we assign to method parameter `b`. 
  
  #Outside the method, on line 74, we invoke the `puts` method on local variable `a`, which outputs 7 to the terminal.
  
  # This demonstrates how reassignment creates a new object rather than modifying the existing integer object held by local var `a` 

# each map select   sort, << , upcase