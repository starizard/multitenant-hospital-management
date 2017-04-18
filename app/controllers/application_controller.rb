class ApplicationController < ActionController::Base    
  before_action :configure_permitted_parameters, if: :devise_controller?
 
  devise_group :person, contains: [:doctor,:user]
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:subdomain])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end



end