# def create_fibonacci_proc
#   series = [1, 1]

#   Proc.new do |n|
#     puts series.size
#     if series.size > n
#       series[0, n]
#     else
#       loop do
#         series << series[-1] + series[-2]
#         break series if series.size == n
#       end
#     end
#   end
# end

# compute_fibonacci_series_up_to_size_n = create_fibonacci_proc

# compute_fibonacci_series_up_to_size_n.call(100)
# compute_fibonacci_series_up_to_size_n.call(5000)
# compute_fibonacci_series_up_to_size_n.call(200)
# compute_fibonacci_series_up_to_size_n.call(10000)
# compute_fibonacci_series_up_to_size_n.call(100)

def create_fibonacci_proc
  series = [1, 1]
  numbers = { 1 => 1 }

  Proc.new do |digits|
    if got_index = numbers.fetch(digits, false)
      got_index
    else
      loop do
        series << series[-1] + series[-2]
        length = series[-1].to_s.length
        numbers[length] = series.size unless numbers.include?(length)
        break series.size if series[-1].to_s.length == digits
      end
    end
  end
end

find_fibonacci_index_by_length = create_fibonacci_proc

p find_fibonacci_index_by_length.call(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length.call(3) == 12         # 1 1 2 3 5 8 13 21 34 55 p 89 144
p find_fibonacci_index_by_length.call(10) == 45
p find_fibonacci_index_by_length.call(100) == 476
p find_fibonacci_index_by_length.call(10) == 45
p find_fibonacci_index_by_length.call(1000) == 4782

start = Time.now
find_fibonacci_index_by_length.call(10000) == 47847
finish = Time.now

puts "With memoization"
p (finish - start).round(2)

start = Time.now
find_fibonacci_index_by_length.call(10000) == 47847
finish = Time.now

puts "With memoization second time"
p (finish - start).round(2)


def find_fibonacci_index_by_length_simple(n)
  series = [1, 1]
  loop do
    series << series[-1] + series[-2]
    break series.size if series[-1].to_s.size == n
  end
end

start = Time.now
find_fibonacci_index_by_length_simple(10000) == 47847
finish = Time.now

puts "Without memoization first time"
p (finish - start).round(2)

start = Time.now
find_fibonacci_index_by_length_simple(10000) == 47847
finish = Time.now

puts "Without memoization second time"
p (finish - start).round(2)
