class CalendarController < ApplicationController
  def index
    @course = Course.find_by(id: params[:course_id])
    @sessions = Course.find_by(id: params[:course_id]).sessions
    @bookings = Booking.all
    @events = Event.all
  end

  def mycalendar
    @all_sessions = []
    @courses = Course.where(user:current_user)
    @bookings = Booking.where(user:current_user)
    @courses.each do |course|
      @all_sessions.concat(course.sessions)
    end
    @bookings.each do |booking|
      @all_sessions.concat(booking.course.sessions)
    end
  end
end
