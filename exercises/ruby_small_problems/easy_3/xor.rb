def xor?(val1, val2)
  !(val1 && val2) && (val1 || val2)
end

p xor?(false, false)
p xor?(false, true)
p xor?(true, false)
p xor?(true, true)