class Luhn
  def initialize(number)
    @number = number
  end

  def addends
    digits = number.digits.reverse
  end

  private

  attr_reader :number
end