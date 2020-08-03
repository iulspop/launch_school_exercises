numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |k, v| puts "#{k}: #{v}" }

half_numbers = numbers.map { |key, number| number / 2 }

p half_numbers