class FlightsController < ApplicationController
  def index
    @flights = Flight.new.get_flights
  end
end
