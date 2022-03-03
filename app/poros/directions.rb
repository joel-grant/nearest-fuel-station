class Directions
  attr_reader :distance, :travel_time, :narrative

  def initialize(data)
    @distance = data[:route][:distance]
    @travel_time = data[:route][:formattedTime]
    @narrative = data[:route][:legs].map { |narrative| narrative[:origNarrative] }
  end
end
