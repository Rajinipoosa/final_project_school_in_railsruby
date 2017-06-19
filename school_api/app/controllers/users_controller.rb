class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    puts "***************"
    puts current_user
    puts "***************"
    render json: current_user
  end
end