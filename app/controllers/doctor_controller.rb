class DoctorController < ApplicationController
  before_filter :authenticate_doctor!
  def profile
  	@doctor = current_doctor
  	@appointments = @doctor.appointments.order(:appointment_date,:appointment_time)
  	
  	
  end

   def show
      @doctor = Doctor.find(params[:id])
  end
  def toggle_doctor
  	@doctor = current_doctor
  	@doctor.available = !@doctor.available
  	@doctor.save!
  	redirect_to toggle_doctor_status_path
  end

end
