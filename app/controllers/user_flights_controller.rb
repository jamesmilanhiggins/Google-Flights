class UserFlightsController < ApplicationController
  def save_flight
    new_flight = current_user.user_flights.create(mpd: params[:mpd], price: params[:price], airlineNumber: params[:airlineNumber], airlineCarrier: params[:airlineCarrier], departureTime: params[:departureTime], arribalTime: params[:arribalTime])
    binding.pry
  end

  def destroy
    savedflight = UserFlight.find(params[:id])
    savedflight.destroy
    redirect_to userflights_path
  end
end
