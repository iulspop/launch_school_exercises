def leading_substrings(string)
  (1..string.size).each_with_object([]) do |size, substrings|
    substrings << string[0, size]
  end
end

p leading_substrings('abc')   #== ['a', 'ab', 'abc']
p leading_substrings('a')     #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']