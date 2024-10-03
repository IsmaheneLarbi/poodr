require_relative 'wheel'

class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  # this technique only creates the wheel once Gear.gear_inches is called.
  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end
end

g1 = Gear.new(52, 11, Wheel.new(26, 1.5))
puts g1.gear_inches
