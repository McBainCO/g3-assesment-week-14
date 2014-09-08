class PatientsController < ApplicationController
  def index
    @patients = Patient.new
  end

  def show
    @patient = Patients(params[:first_name, :last_name])
  end

end
