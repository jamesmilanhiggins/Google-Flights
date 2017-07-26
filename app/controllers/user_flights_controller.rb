class UserFlightsController < ApplicationController

  def index


  end

  def save_flight
      new_flight = current_user.user_flights.create(:price => params[:mpd])

      # @user = User.find(current_user.id)
  end
  # def create
  #   @user = User.find(params[:user_id])
  #   @user_flight = @user.user_flights.new(user_flight_params)
  #   if @user_flight.save
  #     redirect_to user_path(@user_flight.user)
  #   else
  #     render :new
  #   end
  # end
  # def destroy
  #   @user_flight = Review.find(params[:id])
  #   @user_flight.destroy
  #   redirect_to user_path(@user_flight.user)
  # end
  #
  # private
  # def user_flight_params
  #   params.require(:user_flight).permit( :user_id)
  # end

end
