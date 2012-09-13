class PagesController < ApplicationController
  def home
    
  end
  
  def profile
    #current_user.update_attribute :admin, true
    #current_user.update_attribute :active, true
    if !user_signed_in?
       redirect_to home_path
       return
    end
    
    if current_user.active?
       @activated = true;
    else
       @activated = false;
    end
  end
  
  
end
