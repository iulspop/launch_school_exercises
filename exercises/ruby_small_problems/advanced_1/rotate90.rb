def transpose(matrix)
  n_rows    = matrix.size
  n_columns = matrix.first.size
  result = []

  n_columns.times do |column_index|
    new_row = n_rows.times.map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end

  result
end

def rotate90(matrix)
  transpose(matrix).map { |row| row.reverse }
end