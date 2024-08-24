class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @course = Course.find(params[:course_id])
    @chatroom = Chatroom.new
  end

  def create
    @course = Course.find(params[:course_id])
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.course = @course

    if @chatroom.save
      redirect_to chatroom_path(@chatroom), notice: 'Chatroom was successfully created.'
    else
      render :new
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
