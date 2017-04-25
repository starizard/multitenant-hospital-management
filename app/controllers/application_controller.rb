class ApplicationController < ActionController::Base    
  before_action :configure_permitted_parameters, if: :devise_controller?
 # before_action :set_title
  devise_group :person, contains: [:doctor,:user]

  def set_title
    @hname = request.base_url.split('//').second.split('.').first
    @root = 'muten'
    if(@hname != @root)
      @this_hospital = @this_hospital || Hospital.find_by_subdomain(@hname)
    end
  end
  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:subdomain,:image,:about,:qualification,:available,:joined,:phone,:position,:age,:logo,:home_image1,:home_image2,:address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:image,:about,:qualification,:available,:joined,:phone,:position,:age,:logo,:home_image1,:home_image2,:address])
  end



end