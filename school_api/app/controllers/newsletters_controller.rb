class NewslettersController < ApplicationController

  before_action :authenticate_user!

  def index
   newsletters = Newsletter.all
   render :json => newsletters
  end



end