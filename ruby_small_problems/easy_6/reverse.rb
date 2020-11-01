=begin
input: array
output: same array with elements reversed in order!

duplicate the array
empty old array
pop end put it at start
=end

def reverse!(list)
  list_dup = list.dup
  list.clear
  list_dup.size.times { list.push(list_dup.pop) }
  list
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []