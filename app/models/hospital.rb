class Hospital < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  after_create :create_tenant

  private
  
  def create_tenant
  		 puts "SUBDOMAIN IS:"+subdomain.to_s+" .."    
         Apartment::Tenant.create(subdomain)
  end

end
