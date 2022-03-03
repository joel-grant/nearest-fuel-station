class FuelStationService
  def self.find_station(location)
    conn = Faraday.new("https://developer.nrel.gov")
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['fuel_station_api_key']}&location=#{location}&fuel_type=ELEC&limit=1")
    JSON.parse(response.body, symbolize_names: true)
  end
end
