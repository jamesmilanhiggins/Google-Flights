class FlightsController < ApplicationController

  def index
binding.pry
    flight_object = Flight.new(params[:airport])
    @flights = flight_object.get_flights
  end


  private
   def flight_params
     params.require(:flight).permit(:airport)
   end



end
