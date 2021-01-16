def substrings(string)
  substrings = []
  (0..string.size - 1).each do |start|
    (start..string.size - 1).each do |finish|
      substrings << string[start..finish]
    end
  end
  substrings
end

def palindromes(string)
  substrings(string).select do |string|
    string.size > 1 && string == string.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]