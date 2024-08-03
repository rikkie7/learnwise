class CoursesController < ApplicationController
  def catergory
  end

  def index
    @courses = Course.where(category: params[:category])
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.save!
    redircet_to course_path(@course)
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
