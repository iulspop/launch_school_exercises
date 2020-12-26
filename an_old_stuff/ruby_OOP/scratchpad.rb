class Car

  @@greek = 5

  def self.iron
    puts @@greek
  end
end

class PurpleCar < Car
  def run_engine
    puts @@greek = 30
  end
end

Car.iron
car = PurpleCar.new
car.run_engine
Car.iron