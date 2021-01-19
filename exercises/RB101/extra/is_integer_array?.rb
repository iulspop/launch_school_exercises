=begin

Write a function with the signature shown below:

def is_int_array(arr)
  true
end

- returns true / True if every element in an array is an integer or a float with no decimals.
- returns true / True if array is empty.
- returns false / False for every other input.

=end

def is_int_array(arr)
  return false unless arr.is_a? Array
  arr.empty? || arr.all? { |num| num.is_a?(Numeric) && num.floor == num }
end

def is_int_array(arr)
  arr.is_a?(Array) && arr.all? do
    |x| x.is_a?(Integer) || x.is_a?(Float) && x.to_i == x
  end
end

def is_int_array(arr)
  return false if arr.class != Array
  return true if arr.empty?
  return arr.all? { |n| n.class == Integer || n == n.to_i }
  false
end

# test cases
is_int_array([]) == true
is_int_array([1, 2, 3, 4]) == true
is_int_array([-11, -12, -13, -14]) == true
is_int_array([1.0, 2.0, 3.0]) == true
is_int_array([1, 2, nil]) == false
is_int_array(nil) == false
is_int_array("") == false
is_int_array([nil]) == false
is_int_array([1.0, 2.0, 3.0001]) == false
is_int_array(["-1"]) == false