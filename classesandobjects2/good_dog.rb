# good_dog.rb
# ... rest of code ommitted for brevity

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  @@number_of_dogs = 0

  def initialize(n, a)
    @name = n
    @age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

  def self.what_am_i         # Class method definition
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

sparky = GoodDog.new("sparky", 4)

puts sparky
