class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]
  
  def index
    @doctors = Doctor.all
  end

  def show
    # Before Action
  end

  def new
    @doctor = Doctor.new
  end

  def create 
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def edit
    # Before Actioin
  end

  def update
    if @doctor.save(doctor_params)
      redirect_to @doctor
    else
      render :edit
    end
  end

  private

    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :profession)
    end

end
