class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if booking.save
      redirect_to users_path(@user)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to users_path(@user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id)
  end
end
