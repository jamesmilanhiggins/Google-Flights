class FlightsController < ApplicationController


  def index
    flight_object = Flight.new("SFO")
    @flights = flight_object.get_flights
  end

end
