class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
   student = Student.where({user_id: current_user.id})
   render :json =>student
  end

  def show 
    student = Student.find(params[:id])
    render :json =>student
  end


end