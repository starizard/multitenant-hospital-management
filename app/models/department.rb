class Department < ApplicationRecord
	has_many :doctors
	validates :dname, presence: true
	validates :description, presence: true
end
