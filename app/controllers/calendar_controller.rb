class CalendarController < ApplicationController
  def index
    @sessions = Course.find_by(id: params[:course_id]).sessions
    @bookings = Booking.all
    @events = Event.all
  end
end
