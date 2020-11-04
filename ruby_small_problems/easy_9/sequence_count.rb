def sequence_count(count, start)
  sequence = Array.new(count, start)
  sequence.map.with_index { |num, index| num * (index + 1) }
end

p sequence_count(5, 1) == [1, 2, 3, 4, 5]
p sequence_count(4, -7) == [-7, -14, -21, -28]
p sequence_count(3, 0) == [0, 0, 0]
p sequence_count(0, 1000000) == []