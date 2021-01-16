WORD_TO_DIGIT = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'].zip([*'0'..'9']).to_h

def word_to_digit(words)
  WORD_TO_DIGIT.each do |word, digit|
    words.gsub!(/#{word}( |(\.))/i, "#{digit}\\2")
  end
  words.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
end

p word_to_digit('Please call me at SIX SIX ONE five five five one two three four. Not 5 or 4, thanks.')