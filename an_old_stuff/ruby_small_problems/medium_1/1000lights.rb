=begin
1000 Lights
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

1 2 3 4 5
1 0 0 1 0

input: n number of switches Integer
output: array with 1 to n numbers, minus those that are off

Data Structure:
[[1,false], ]

Algorithm:
1. create array with 1 to n numbers
2. map to [n, true]
3. loop from 2 to n => x
   1. toggle number that is divisible by x
4. select only true from array, map only to number

=end

def lights(n)
  lights = [*1..n].map { |num| [num, true] }
  2.upto(n) do |divisor|
    lights.map! do |(num, state)|
      num % divisor == 0 ? [num, !state] : [num, state]
    end
  end
  lights.select { |(_, state)| state == true }.map { |(num, _)| num }
end

p lights(5)
p lights(10)