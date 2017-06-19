class ReportsController < ApplicationController
  before_action :authenticate_user!

  def index
   reports = Report.all
   render :json =>reports

  end



end