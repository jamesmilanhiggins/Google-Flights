class FlightsController < ApplicationController

  def index
    flight_object = Flight.new(params[:origin], params[:destination], params[:date])
    # flight_object = Flight.new(flight_params)
    @flights = flight_object.get_flights
    @best_flight = Flight.get_best_deal
  end


  private
   def flight_params
     params.require(:flight).permit(:origin, :destination, :date)
   end
end
