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
    @course.user = current_user
    @course.build_user unless @course.user
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user

    if @course.location.present?
      @course.geocode # Force geocoding
      if @course.latitude.nil? || @course.longitude.nil?
        flash.now[:alert] = "Unable to geocode the provided address. Please check and try again."
        render :new and return
      end

    else
      flash.now[:alert] = "Address is required for course location."
      render :new and return
    end

    if @course.save
      @marker = {
        lat: @course.latitude,
        lng: @course.longitude,
        info_window: render_to_string(partial: "shared/popup", locals: { course: @course }),
        marker_html: render_to_string(partial: "shared/marker")
      }
      update_learning_topics
      # update_self_introduction
      redirect_to course_path(@course), notice: 'Course was successfully created.'
    else
      render :new
    end
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
    redirect_to dashboard_path, status: :see_other
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

  # def update_self_introduction
  #   if params[:course][:user_attributes][:self_introduction]
  #     @course.user.update(self_introduction: params[:course][:user_attributes][:self_introduction])
  #   end
  # end

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:price, :title, :description, :category, :size, :capacity, :location, :format, :start_date, :end_date, :image_url, :photo, learning_topics_content:[])
  end
end
