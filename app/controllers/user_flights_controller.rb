class UserFlightsController < ApplicationController
  def save_flight
    new_flight = current_user.user_flights.create(:price => params[:mpd])
  end

  def destroy
    savedflight = UserFlight.find(params[:id])
    savedflight.destroy
    redirect_to userflights_path
  end
end
