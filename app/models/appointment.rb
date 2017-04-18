class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates_uniqueness_of :doctor_id, :scope =>[:appointment_time,:appointment_date]
end
