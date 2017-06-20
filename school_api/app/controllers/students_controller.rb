class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
   students = Student.all
   render :json =>students

  end
  def show 
    student = Student.find(params[:id])
     render :json =>student
  end


end