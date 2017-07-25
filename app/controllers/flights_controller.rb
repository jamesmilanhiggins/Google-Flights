class FlightsController < ApplicationController

  def index
    flight_object = Flight.new(params[:airport], params[:date])
    @flights = flight_object.get_flights
  end


  private
   def flight_params
     params.require(:flight).permit(:airport, :date)
   end
end
