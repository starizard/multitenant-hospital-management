class Hospital < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
  validates :logo, presence: true
  validates :home_image1, presence: true
  validates :home_image2, presence: true
  validates :address, presence: true
  validates :subdomain, presence: true
  after_create :create_tenant

  private
  
  def create_tenant
  		     
         Apartment::Tenant.create(subdomain)
  end

end
