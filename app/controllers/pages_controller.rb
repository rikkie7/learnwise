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
  end
end
