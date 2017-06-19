class NewslettersController < ApplicationController

  def index
   newsletters = Newsletter.all
   render :json => newsletters

  end



end