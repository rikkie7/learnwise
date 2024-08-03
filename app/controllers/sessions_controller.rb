class SessionsController < ApplicationController
  def index
    @sessions = Session.where(courses: params[:courses])
  end

end
