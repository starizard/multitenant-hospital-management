class Staff < ApplicationRecord
  validates :image, presence: true
  validates :name, presence: true
  validates :position, presence: true
  validates :joined, presence: true
  validates :phone, presence: true
end
