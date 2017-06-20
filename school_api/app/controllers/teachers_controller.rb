class TeachersController < ApplicationController
  before_action :authenticate_user!

  def index
   teachers = Teacher.where({section_id: params[:id]})
   render :json =>teachers.as_json({include: :sessions})

  end


 
end