=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

input: number of digits Integer
output: index of the first number in the fibonacci sequence that has that many digits.

requirements
  explicit
   - each number is the sum of the two previous numbers
   - first two numbers are 1, 1
   - index starts at 1
  implicit
   - positive input
   - performant solution

mental model:
calculate fibonnaci sequence up to first number with enough digits and return index of that number

calculate and save sequence!

Data Structure & Algorithm

compute series up to first number with enough digits
  - create series
  - compute next number
    - loop
       - add last and before last
       - add to series
       - break out of loop if number of digits enough large
  - check number of digits
return its size

=end

def create_fibonacci_proc
  series = [1, 1]

  Proc.new do |n|
    puts series.size
    if series.size > n
      series[0, n]
    else
      loop do
        series << series[-1] + series[-2]
        break series if series.size == n
      end
    end
  end
end

compute_fibonacci_series_up_to_size_n = create_fibonacci_proc

p compute_fibonacci_series_up_to_size_n(5)

# compute_fibonacci_series_up_to_size_n.call(100)
# compute_fibonacci_series_up_to_size_n.call(5000)
# compute_fibonacci_series_up_to_size_n.call(200)
# compute_fibonacci_series_up_to_size_n.call(10000)
# compute_fibonacci_series_up_to_size_n.call(100)






# compute = Proc.new do
#   loop do
#     serie << serie[-1] + serie[-2]
#     break serie if serie[-1].digits.size == number_of_digits
#   end
# end

# def make_series(number_of_digits, compute)
#   compute.call
# end

# def find_fibonacci_index_by_length(number_of_digits)
#   series = 

# end

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847