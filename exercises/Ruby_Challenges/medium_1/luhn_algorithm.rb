class Luhn
  def initialize(number)
    @number = number
  end

  def self.create(number)
    number = number * 10
    loop do
      new(number).valid? ? (return number) : (number = number + 1)
    end
  end

  def addends
    digits = number.digits.reverse
    every_second_index_from_right = (digits.length - 2).step(by: -2, to: 0).to_a

    digits.map.with_index do |num, i|
      if every_second_index_from_right.include? i
        num = num * 2
        num > 9 ? (num - 9) : num
      else
        num
      end
    end
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end

  private

  attr_reader :number
end
