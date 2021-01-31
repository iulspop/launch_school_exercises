class Robot
  @@names = []

  def self.reset
    @@names = []
  end

  def initialize
    @name = nil
  end

  def name
    if @name.nil?
      loop do
        @name = rand_name
        break unless @@names.include?(name)
      end

      @@names << @name
    end
    @name
  end

  def reset
    @@names.delete @name
    @name = nil
  end

  private

  def rand_name
    
      name = rand_letter(2) + rand_digit_string(3)
      return name 
  end

  def rand_letter(quantity = 1)
    capital_A_ord = 65
    capital_Z_ord = 90
    letters = []
    quantity.times { letters << rand(65..90).chr }
    letters.join
  end

  def rand_digit_string(quantity = 1)
    digits = []
    quantity.times { digits << rand(0..9).to_s }
    digits.join
  end
end