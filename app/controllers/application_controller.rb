class ApplicationController < ActionController::Base
  
  protect_from_forgery
  layout :layout_by_resource
  
  #This rescues a user from an access denied message from cancan if they have accessed a page they don't have privileges to.
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to "/users/sign_in", :alert => exception.message
  end

  protected

  def layout_by_resource
    if devise_controller?
      "no_side"
    else
      "application"
    end
  end


end
