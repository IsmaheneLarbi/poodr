require_relative 'wheel'

class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    # this technique creates a new wheel everytime a gear is created
    @chainring = chainring
    @cog = cog
    @wheel = Wheel.new(rim, tire)
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

g1 = Gear.new(52, 11, Wheel.new(26, 1.5))
puts g1.gear_inches
