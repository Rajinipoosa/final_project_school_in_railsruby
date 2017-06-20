class StudentReportsController < ApplicationController
  before_action :authenticate_user!

  def index
   studentReports = StudentReport.where({student: params[:student_id]})
   render :json =>studentReports.as_json( { :include => :report } ) 

  end

 

  def show
    StudentReport = StudentReport.find( params[:id] )
    render( json: StudentReport.as_json(include: :venue) )
  end


end