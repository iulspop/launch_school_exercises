=begin
input: string
output: hash with percentages as floats or integers?

req:
- input string at least one char

questions?
- spaces?

algorigthm
given a string
init hash with categories and 0
loop through each char
  if lowercase count up the hash
  if uppercase same
  else count neither
end
map values of hash as percentage of total, count/length of the string
map percentages to float or int?
=end

def letter_percentages(string)
  count = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if    char.match?(/[a-z]/) then count[:lowercase] += 1
    elsif char.match?(/[A-Z]/) then count[:uppercase] += 1
    else                            count[:neither]   += 1 end
  end
  to_percentage = string.size.to_f / 100
  count.map { |key, value| [key, (value / to_percentage).round(2) ] }.to_h
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')