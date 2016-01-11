class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  private

  def human_years
    self.age / DOG_YEARS
  end
end

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

sparky = GoodDog.new("sparky", 5)
puts sparky.age

bear = BadDog.new(2, "bear")
