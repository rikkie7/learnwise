class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_course, only: %i[show edit update destroy]

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
    @user = @course.user
    @marker = {
      lat: @course.latitude,
      lng: @course.longitude,
      info_window: render_to_string(partial: "shared/popup", locals: { course: @course }),
      marker_html: render_to_string(partial: "shared/marker")
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
    update_learning_topics
    redirect_to course_path(@course)
  end

  def edit
    @course = Course.includes(:user).find(params[:id])
  end

  def update
    if @course.update(course_params)
      update_learning_topics
      redirect_to course_path(@course), notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path, status: :see_other
  end

  private

  def update_learning_topics
    if params[:learning_topic] && params[:learning_topic][:content]
      @learning_topics_content = params[:learning_topic][:content]
      @course.learning_topics.destroy_all
      @learning_topics_content.each do |content|
        LearningTopic.find_or_create_by(content: content, course: @course)
      end
    end
  end

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:price, :self_introduction, :title, :description, :category, :size, :location, :format, :start_date, :end_date, :image_url, learning_topics_content:[])
  end
end
