class SessionsController < ApplicationController
  def show
    @sessions = Session.all
  end

  def new
    @session = Session.new
    @course = Course.find(params[:course_id])
  end

  def edit
    @session = Session.find(params[:id])
    @course = Course.find(params[:course_id])
  end

  def update
    @session = Session.find(params[:id])
    @course = Course.find(params[:course_id])

    if @session.update(session_params)
      redirect_to course_path(@course), notice: "Class successfully updated!"
    else
      render :edit, status: 422
    end
  end

  def create
    @session = Session.new(session_params)
    @course = Course.find(params[:course_id])

    @session.course = @course

    if @session.save
      redirect_to course_path(@course)
    else
      #Show the user they made a mistake
      render :new, status: 422
    end
  end
  def destroy
    @session = Session.find(params[:id])
    @session.destroy

    redirect_to course_path(@session.course), notice: "Session deleted" , status: :see_other
  end

  private

  def session_params
    params.require(:session).permit(:title, :description, :date, :start_time, :end_time)
  end


end
