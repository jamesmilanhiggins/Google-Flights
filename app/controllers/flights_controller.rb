class FlightsController < ApplicationController

  def index
    flight_object = Flight.new(params[:origin], params[:destination], params[:date])
    @flights = flight_object.get_flights
  end


  private
   def flight_params
     params.require(:flight).permit(:origin, :destination, :date)
   end
end
