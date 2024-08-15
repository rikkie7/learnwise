class CoursesController < ApplicationController
  def catergory
  end

  def index
    if params[:query].present?
      @courses = Course.where(category: params[:category]).search_by_title_and_location(params[:query])
    else
      @courses = Course.where(category: params[:category])
    end
  end

  def show
    @course = Course.find(params[:id])
    @user = @course.user
    @marker = {
      lat: @course.latitude,
      lng: @course.longitude,
      info_window: render_to_string(partial: "shared/popup", locals: { course: @course })
    }
    @booking = Booking.new
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    @course.save!
    @learning_topics_content = params[:learning_topic][:content]
    @learning_topics_content.each do |content|
      LearningTopic.find_or_create_by(content: content, course: @course)
    end
    redirect_to course_path(@course)
  end

  def edit
    @course = Course.find(params[:id])
  end

  def updated
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path, status: :see_other
  end

  private
  def course_params
    params.require(:course).permit(:price, :title, :description, :category, :size)
  end
end
