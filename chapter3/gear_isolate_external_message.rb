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
    ratio * diameter
  end

  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end
  
  # this technique isolates potential changes to diameter.
  def diameter
    wheel.diameter
  end
end

g1 = Gear.new(52, 11, Wheel.new(26, 1.5))
puts g1.gear_inches
