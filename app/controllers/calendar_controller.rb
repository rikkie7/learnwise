class CalendarController < ApplicationController
  def index
    @sessions = Session.all
    @bookings = Booking.all
    @events = Event.all
  end
end
