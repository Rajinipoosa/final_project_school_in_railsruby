class RegistrationsController < Devise::RegistrationsController  
    #before_action :authenticate_user!

    respond_to :json
end 