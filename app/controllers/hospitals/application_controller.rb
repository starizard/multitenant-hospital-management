class ApplicationController < ActionController::Base    
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:subdomain,:image,:about,:qualification,:available,:joined,:phone,:position,:age,:logo,:home_image1,:home_image2,:address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:image,:about,:qualification,:available,:joined,:phone,:position,:age,:logo,:home_image1,:home_image2,:address])
  end
end