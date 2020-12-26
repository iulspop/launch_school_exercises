def repeater(string)
  string.chars.map { |char| char + char }.join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

CONSONANTS = 'BCDFGHJKLMNPQRSTVWXZY'

def double_consonants(string)
  string.chars.map do |char|
    if char.match /[#{CONSONANTS}]/i then char + char
    else char end
  end.join
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""