class SectionsController < ApplicationController
  before_action :authenticate_user!

  def index
   sections = Section.all
   render :json =>sections
  end
  
  def show
    sections = Section.all
    render :json =>sections.as_json({include: :teacher})
  end


end