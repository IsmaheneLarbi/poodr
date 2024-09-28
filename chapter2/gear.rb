# example class of a POODR
require_relative 'wheel'

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel = nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

wheel1 = Wheel.new(26, 1.5)

puts Gear.new(52, 11, wheel1).gear_inches
puts Gear.new(52, 11).ratio
