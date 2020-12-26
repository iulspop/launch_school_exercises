def block_word?(string)
  spelling_blocks = [ ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
  ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
  ['V', 'I'], ['L', 'Y'], ['Z', 'M'] ]

  string.each_char do |char|
    if spelling_blocks.any? { |block| block.include? char.upcase }
       spelling_blocks.select! { |block| !block.include? char.upcase }
    else
      return false
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true