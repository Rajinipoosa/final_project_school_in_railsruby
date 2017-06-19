class StudentReportsController < ApplicationController
  before_action :authenticate_user!

  def index
   studentReports = Section.all
   render :json =>studentReports

  end



end