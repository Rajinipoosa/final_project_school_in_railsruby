class TeachersController < ApplicationController
  before_action :authenticate_user!

  def index
   teachers = Student.all
   render :json =>teachers

  end



end