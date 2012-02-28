class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authenticate_current_refinery_user!
    unless current_refinery_user
      trfe "please signin to continue"
      redirect_to  refinery.root_path 
    end
  end

end
