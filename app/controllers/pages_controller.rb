class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      redirect_to dashboard_path
    end
  end

  def dashboard
    @user = current_user
    @courses = Course.where(user: current_user)
    @bookings = Booking.where(user: current_user)

    case params[:status]
    # case filter_param
      when 'finished'
        @bookings = @bookings.joins(:course).where('courses.end_date <= ?', Date.today)
      when 'not_finished'
        @bookings = @bookings.joins(:course).where('courses.end_date > ?', Date.today)
    end
  end
end
