class StudentReportsController < ApplicationController

  def index
   studentReports = Section.all
   render :json =>studentReports

  end



end