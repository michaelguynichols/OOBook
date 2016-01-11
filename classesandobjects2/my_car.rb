class MyCar
  attr_accessor :color, :speed, :model
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
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

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end

  def to_s
    "You're driving a #{self.year} #{self.color} #{self.model}."
  end
end

MyCar.gas_mileage(12, 400)

car = MyCar.new(2014, "blue", "CRV")
puts car
