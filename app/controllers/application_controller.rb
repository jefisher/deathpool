class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
   profile_path
  end
  
  def after_sign_out_path_for(resource)
   home_path
  end
end
