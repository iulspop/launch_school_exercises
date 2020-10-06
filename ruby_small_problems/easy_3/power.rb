def multiply(n1, n2)
  n1 * n2
end

def power(n, pow)
    return multiply(n, n) if pow == 2
    multiply(power(n, pow - 1), n)
end

p multiply(multiply(3, 3), 3)
p power(3, 20)