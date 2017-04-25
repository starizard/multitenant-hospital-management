class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
  has_many :appointments, dependent: :destroy
  has_many :reports, dependent: :destroy
  validates :name, presence: true
  validates :age, presence: true
  validates :phone, presence: true
end
