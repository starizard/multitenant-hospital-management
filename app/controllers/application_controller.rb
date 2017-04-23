class ApplicationController < ActionController::Base    
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_title
  devise_group :person, contains: [:doctor,:user]
  def set_title
    @hname = request.base_url.split('//').second.split('.').first
    @root = 'lvh'
  end
  protected
 
  def configure_permitted_parameters


    devise_parameter_sanitizer.permit(:sign_up, keys: [:subdomain])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:image,:about,:qualification,:available,:joined,:phone,:position,:age])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:image,:about,:qualification,:available,:joined,:phone,:position,:age])

  end



end