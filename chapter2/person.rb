class Person
  attr_reader :energy
  def initialize(energy)
    @energy = energy
  end

  def eats
    energy + 100
  end

  def sleeps
    energy + 50
  end

  def dies
    @energy = 0
  end

  def is_dead?
    energy == 0
  end
end

person = Person.new('a', 4, 10)
puts person.eats
puts person.dies
puts person.is_dead?
