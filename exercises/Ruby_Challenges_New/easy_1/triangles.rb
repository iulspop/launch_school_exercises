require "pry"
=begin
sides
  lengths equal = equilateral
  exact two sides equal = isoscles
  all sides diff = scalene

X all sides must be > 0
sum of any two sides must be >= than third side
  array of [sum of two sides, length third side]
  sides [7, 3, 2]
  [7, 3], 2
  [3, 2], 7
  [2, 7], 3
  product

  each
    select those not included

sides can be float or integer

=end

class Triangle
  def initialize(*sides)
    @sides = sides
    raise ArgumentError, "One or more lengths is invalid." unless valid?
  end

  def kind
    return 'equilateral' if sides.uniq.size == 1
    return 'isosceles'   if sides.uniq.size == 2
    return 'scalene'
  end

  private

  attr_reader :sides

  def valid?
    return false if sides.any? { |side| side <= 0 }
    valid_proportions?(sides)s
  end

  def valid_proportions?(sides)
    sum_of_two_sides = []
    length_of_third_side = []
    sides.each_with_index do |side, index|
      two_other_sides = sides.reject.with_index do |_, other_index|
        other_index == index
      end
      sum_of_two_sides << two_other_sides.sum
      length_of_third_side << side
    end
    sum_of_two_sides.zip(length_of_third_side).all? { |(sum, side)| sum >= side }
  end
end
