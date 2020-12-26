def penultimate(string)
  string.match(/([^\s]+)\s[^\s]+$/)[1]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'