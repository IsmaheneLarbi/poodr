require_relative 'wheel'

class Gear
  attr_reader :chainring, :cog, :wheel
  # remove dependency on param order by using a hash
  def initialize(args)
    # provide default values
    # fetch checks that the key is in the hash, differentiates between nil (not present at atll) or falsy
    # if absent, sets to the default value
    @chainring = args.fetch(:chainring, 40)
    @cog = args.fetch(:cog, 18)
    @rim = args[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
  end
end

g1 = Gear.new(
   :chainring => 52,
   :cog => 11,
   :wheel => Wheel.new(rim, tire))
puts g1.gear_inches
