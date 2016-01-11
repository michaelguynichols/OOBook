module Offroadable
  def can_offroad?
    puts "Can go offroad."
  end
end

class Vehicle
  attr_accessor :year, :color, :model, :speed

  @@number_of_vehicles = 0

  def initialize(y, c, m, s)
    self.year = y
    self.color = c
    self.model = m
    self.speed = s
    @@number_of_vehicles += 1
  end

  def speed_up(amount)
    self.speed += amount
    puts "You pushed the gas and accelerated to #{self.speed} mph."
  end

  def brake(amount)
    self.speed -= amount
    puts "You pushed the break and decelerated to #{self.speed} mph."
  end

  def shut_down
    self.speed = 0
    puts "We are parking."
  end

  def current_speed
    puts "You are now going #{self.speed} mph."
  end

  def spray_paint(new_color)
    self.color = new_color
  end

  def age
    puts "Your #{self.model} is #{calculate_age} years old."
  end

  # Class methods
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end

  def self.how_many_vehicles
    @@number_of_vehicles
  end

  private

  def calculate_age
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def initialize(year, color, model, speed)
    super(year, color, model, speed)
  end

  def to_s
    "You're driving a #{self.year} #{NUMBER_OF_DOORS}-door #{self.color} #{self.model}."
  end
end

class MyTruck < Vehicle
  include Offroadable
  NUMBER_OF_DOORS = 2

  def initialize(year, color, model, speed)
    super(year, color, model, speed)
  end

  def to_s
    "You're driving a #{self.year} #{NUMBER_OF_DOORS}-door #{self.color} #{self.model}."
  end
end


car = MyCar.new(2014, "blue", "Honda CRV", 50)
puts car.model
puts car.current_speed
car.age

truck = MyTruck.new(2005, "white", "Jeep", 65)
truck.can_offroad?
truck.age

puts Vehicle.how_many_vehicles

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
