=begin
input: array
output: array but with rows and columns swapped

req:
  - mutate input array and return it

test cases:
see test

mental model:
use holding array to build new rows from columns, then fill input array
or
go column by column and put elements in right array

algo:
get n_rows and n_columns of matrix
must be equal, if not reject
init holding array with n_columns
loop through matrix rows
  loop n_columns times
    shift and push to respective holding array column
  end
end
loop through holding array
  loop through column
    shift and push to respective row in old array

return old array

=end

def transpose!(matrix)
  
end