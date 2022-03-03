class DirectionsFacade
  def self.direction_info(start, destination)
    data = DirectionsService.get_direction_data(start, destination)
    Directions.new(data)
  end
end
