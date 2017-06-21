class TeachersController < ApplicationController
  before_action :authenticate_user!

  def index
   teacher = Teacher.all
   render :json =>teacher

  end


 
end