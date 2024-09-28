class RevealingReferences
  attr_reader :wheels
  def initialize(data)
    @wheels = wheelify(data)
  end

  wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect 
  end
end