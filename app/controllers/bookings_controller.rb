class BookingsController < ApplicationController
  before_action :set_course, only: %i[new create show]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = @course.bookings.build(booking_params)
    @booking.user = current_user
    if @course.bookings.exists?(user: current_user)
      redirect_to courses_category_path, alert: "You have already booked this course! Have a look at other courses!"
    elsif @booking.save
      redirect_to dashboard_path(@user), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    @course = @booking.course
    @booking = Booking.find(params[:id])
    @marker = {
      lat: @course.latitude,
      lng: @course.longitude,
      info_window: render_to_string(partial: "shared/popup", locals: { course: @course })
    }
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path(@user)
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def booking_params
    params.require(:booking).permit(:title)
  end
end
