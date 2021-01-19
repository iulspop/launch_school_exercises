class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    digits = number.digits.reverse
    every_second_index_from_the_right = digits.length.step(by: -2, to: 0).to_a
    digits.map.with_index do |num, i|
      if every_second_index_from_the_right.include? i
        num = num * 2
        num > 9 ? (num - 9) : num
      else
        num
      end
    end
  end

  private

  attr_reader :number
end