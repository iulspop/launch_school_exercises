=begin
input: position in the series `n`
output: number at the position

req:
- only positive input
- [1, 1]
- all other series[n-2]+series[n-1]

=end

series = [nil, 1, 1]

def fibonacci(nth, series)
  return series[nth] if series[nth]
  series[nth] = fibonacci(nth - 1, series) + fibonacci(nth - 2, series)
end

p fibonacci(1, series) == 1
p fibonacci(2, series) == 1
p fibonacci(3, series) == 2
p fibonacci(4, series) == 3
p fibonacci(5, series) == 5
p fibonacci(12, series) == 144