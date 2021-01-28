=begin
Given three arrays of integers, return the sum of elements that are common in all three arrays.
=end

def common(a,b,c)

end

# because 2 & 3 are common in all 3 arrays
puts common([1,2,3],[5,3,2],[7,3,2]) == 5

# because 2,2 & 3 are common in the 3 arrays
puts common([1,2,2,3],[5,3,2,2],[7,3,2,2]) == 7


Given three arrays of integers, return the sum of elements that are common in all three arrays.

input: 3 arrays
output: number-int
approach: 

get common numbers

[1,2,2,3],
[3,2,5,2],
[2,7,3]

mutate the array, delete was common

count 


algo:
-initialize sum variable at 0
-iterate over first array, checking if current num is included in arr2 and arr3 
-if current num 

- init sum
- iterate arr 1
  - el included? in other arrays
    - if true
      - +=sum
      - arr2.each_with_index do |el|
        check if el equal to included
        delete first occurance of matching element using index
          - reasign nil
      -arr3 repeat above 
-return sum 

=end


def common(a,b,c)
  sum = 0
  
  a.each do |num|
    if b.include?(num) && c.include?(num)
      sum += num
      b.each do |num2|
        if num == num2
          num2 = nil
        end
      end
      c.each do |num3|
        if num == num3
          num3 = nil
        end
      end 
    end
  end 
  sum
end