class ReviewsController < ApplicationController
  before_action :set_course
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = @course.reviews
  end

  def show
  end

  def new
    @review = @course.reviews.new
  end

  def create
    @review = @course.reviews.new(review_params)
    if @review.save
      redirect_to course_reviews_path(@course), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to course_review_path(@course, @review), notice: 'Review was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to course_reviews_path(@course), notice: 'Review was successfully destroyed.'
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_review
    @review = @course.reviews.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
