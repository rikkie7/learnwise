class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @courses_of_the_year = top_courses_with_more_students
    @five_star_reviews = random_five_star_reviews
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

  private

  def top_courses_with_more_students
    Course.joins(:bookings)
      .left_joins(:reviews) # Ensures courses without reviews are included
      .select('courses.*, users.first_name AS teacher_first_name, users.last_name AS teacher_last_name, users.image_url AS teacher_image_url, COUNT(bookings.id) AS booking_count, AVG(reviews.rating) AS average_rating')
      .joins(:user) # Join the users table to get teacher details
      .group('courses.id, users.id') # Group by both course and teacher
      .order('booking_count DESC')
      .limit(4)
  end

  def random_five_star_reviews
    Review.where(rating: 5).order('RANDOM()').limit(5)
  end

end
