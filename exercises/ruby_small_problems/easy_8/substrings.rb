def substrings(string)
  substrings = []
  (0..string.size - 1).each do |start|
    (start..string.size - 1).each do |finish|
      substrings << string[start..finish]
    end
  end
  substrings
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]