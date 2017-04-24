class StaticPagesController < ApplicationController
	 #before_filter:go_to_subdomain, if: :hospital_signed_in?, only: :home

  def home
  	@person = current_person 
  	#@hname = request.base_url.split('//').second.split('.').first
    #@root = 'muten'

  end

  def about
  end

  def landing
  end

  def go_to_subdomain
  	if hospital_signed_in?
  		@curr_url = "http://"+current_hospital.subdomain+".muten.org"
      redirect_to @curr_url 
		end
    
  end




end
