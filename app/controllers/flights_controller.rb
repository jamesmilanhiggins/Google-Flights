class FlightsController < ApplicationController

  def index
    flight_object = Flight.new("BNA", "2017-09-23")
    @flights = flight_object.get_flights
  end

end
