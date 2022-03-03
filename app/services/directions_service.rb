class DirectionsService
  def self.get_direction_data(from, to)
    conn = Faraday.new("http://www.mapquestapi.com")
    response = conn.get("/directions/v2/route?key=#{ENV['mapquest_api_key']}&from=#{from}&to=#{to}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
