class TeachersController < ApplicationController

  def index
   teachers = Student.all
   render :json =>teachers

  end



end