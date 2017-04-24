class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates_uniqueness_of :doctor_id, :scope =>[:appointment_time,:appointment_date]
  validates :appointment_date, presence: true
  validates :appointment_time, presence: true
  validates :user_id, presence: true
  validates :doctor_id, presence: true
end
