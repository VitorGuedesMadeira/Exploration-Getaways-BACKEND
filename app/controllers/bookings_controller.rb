class BookingsController < ApplicationController
  # before_action :authenticate_user!

  def index
    render json: currentuser.bookings.all
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      render json: { message: 'booking created' }, status: :created
    else
      render json: { error: 'Unable to create booking' }, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :package_id, :user_id)
  end
end
