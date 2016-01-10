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
end

lumina = MyCar.new(2014, "Blue", "CRV")
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed
puts lumina.year
lumina.color = "Red"
puts lumina.color
lumina.spray_paint("Green")
puts lumina.color
