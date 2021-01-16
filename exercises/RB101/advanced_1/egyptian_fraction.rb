=begin
  egyptian
    input: rational number
    output: array of denominators

    req:
      - rational num = any number that is result of division of two integers
      - egyptian fraction = sum of unique unit fractions
      - positive num

    3/16
    [1/16, 1/16, 1/16]
    1/16, 1/17, 1/272, 1/16
    1/16, 1/17, 1/272, 1/17, 1/272

    break rational number into unit denomiators
      init array with denominators numerator times
    repeat until no more pairs is uniq?
      for each pair apply identity
        iterate denominators
          for each denominator
            iterate denominates
              besides that one, is there another?
              return index of both
        grab pair, replace with indentity
          rational get indentity as array
          reassign index
          splice after
    return ordered array

  unegyptian
    input: array of denominators
    output: rational number

    req:

    algo
      map to rational
      reduce to sum

supermemo
  add rational
  add egyptian
  
  minitest
    add assert_equal
    add
=end

def find_pair(array)
  array.each_with_index do |element, index|
    array.each_with_index do |element_2, index_2|
      if element == element_2 && index != index_2
        return index_2
      end
    end
  end
  nil
end

def egyptian_replacement(k)
  [(k + 1), (k * (k + 1))]
end

def egyptian(rational)
  denominators = Array.new(rational.numerator, rational.denominator)

  loop do
    break unless index2 = find_pair(denominators)
    deno1, deno2 = egyptian_replacement(denominators[index2])
    denominators[index2] = deno1
    denominators.insert(index2 + 1, deno2)
  end

  denominators.sort
end

def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end

  denominators
end


def unegyptian(denominators)
  denominators.map { |denominator| Rational(1, denominator) }.reduce(&:+)
end