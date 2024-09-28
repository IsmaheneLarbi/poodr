# example of ood class
class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (2 * tire)
  end

  def circumference
    diameter * Math::PI
  end
end

wheel1 = Wheel.new(26, 1.5)
puts wheel1.circumference
