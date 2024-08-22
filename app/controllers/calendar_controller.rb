class CalendarController < ApplicationController
  def index
    @course = Course.find_by(id: params[:course_id])
    @sessions = Course.find_by(id: params[:course_id]).sessions
    @bookings = Booking.all
    @events = Event.all
  end
end
