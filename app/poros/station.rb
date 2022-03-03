class Station
  attr_reader :name, :address, :fuel_type, :access_times

  def initialize(data)
    @name = [:station_name]
    @address = [:street_address]
    @fuel_type = [:fuel_type_code]
    @access_times = [:access_days_time]
  end
end
