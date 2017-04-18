class DoctorController < ApplicationController
  def profile
  	@doctor = current_doctor
  end

   def show
      @doctor = Doctor.find(params[:id])
  end

end
