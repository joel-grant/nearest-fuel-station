class FuelStationFacade
  def self.find_nearest(location)
    data = FuelStationService.find_station(location)
    Station.new(data)
  end
end
