class PrescriptionsController < ApplicationController

  def index
    @prescriptions = Prescription.order(:id)
  end

  def show
    @prescription = Prescription.find(params[:id])
    @patient = Patient.find(params[:id])
  end

  def new
    @prescription = Prescription.new
  end


  def create
    @prescription = Prescription.new(allowed_params)
      if @prescription.save
        flash[:notice] = "Your prescription has been created"
        redirect_to patient_path
      else
        render :new
      end
  end


  private
  def allowed_params
    params.require(:prescription).permit(:name, :dosage, :schedule, :start_date, :end_date)
  end

end
