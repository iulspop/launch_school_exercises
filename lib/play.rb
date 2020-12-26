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
return holding array

=end

def transpose(matrix)
  n_rows    = matrix.size
  n_columns = matrix[0].size
  holding_matrix = []
  n_columns.times { holding_matrix << [] }

  n_rows.times do |row_index|
    n_columns.times do |column_index|
      column_element = matrix[row_index].shift
      holding_matrix[column_index] << column_element
    end
  end

  holding_matrix
end