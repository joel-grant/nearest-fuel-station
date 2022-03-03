class SearchController < ApplicationController
  def index
    @fuel_station = FuelStationFacade.find_nearest(params[:location])
    @directions = DirectionsFacade.direction_info(params[:location], @fuel_station.address)
    require 'pry'; binding.pry
  end
end
