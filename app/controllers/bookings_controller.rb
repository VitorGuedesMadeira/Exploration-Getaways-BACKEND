class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: currentuser.bookings.all
  end
end
