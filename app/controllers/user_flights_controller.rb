class UserFlightsController < ApplicationController
  def save_flight
    new_flight = current_user.user_flights.create(:price => params[:mpd])
  end
end
