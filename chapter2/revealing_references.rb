# example of OODR class
class RevealingReferences
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect do |cell|
      Wheel.new(cell[0], cell[1])
    end
  end

  def diameters
    wheels.collect { |wheel| diameter(wheel) }
  end

  def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
  end
end

# two dimensional array of rims and tires
data = [[622, 20], [622, 23], [559, 30], [559, 40]]

inst1 = RevealingReferences.new(data)
diameters = inst1.diameters
puts diameters[0]
