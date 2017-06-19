class SectionsController < ApplicationController
  before_action :authenticate_user!

  def index
   sections = Section.all
   render :json =>sections

  end



end