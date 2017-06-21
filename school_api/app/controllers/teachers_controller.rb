class TeachersController < ApplicationController
  before_action :authenticate_user!

  def index
   teacher = Teacher.where({section: params[:id]})
   render :json =>teacher.as_json({include: :section})

  end


 
end