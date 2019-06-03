class ApptsController < ApplicationController
  before_action :set_appt, only: [:edit, :update]
  before_action :set_doctor
  before_action :set_patient, only: [:new, :create, :update]
  
  def index
    @appts = @doctor.appts.order(:date, :time)
  end

  def show
  end

  def new
    @appt = @doctor.appts.new
  end
  
  def create 
    @appt = @doctor.appts.new(appt_params)
    if @appt.save
      redirect_to doctor_appts_path(@doctor)
    else
      render :new
    end
  end
  
  def edit
    binding.pry
  end

  def update
    # @appt = @doctor.appts(appt_params)
    if @appt.update(appt_params)
      redirect_to doctor_appts_path(@doctor)
      binding.pry
    else
      render :edit
    end
  end

  def destroy
    @doctor.appts.find(params[:id]).destroy
    redirect_to doctor_appts_path
  end

    private

    def appt_params
      params.require(:appt).permit(:date, :time, :patient_id)
    end

    def set_appt
      @appt = Appt.find(params[:id])
    end

    def set_doctor
      @doctor = Doctor.find(params[:doctor_id])
    end

    def set_patient
      @patient = Patient.all - @doctor.patients
    end

end
