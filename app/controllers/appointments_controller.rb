class AppointmentsController < ApplicationController
before_action :set_appointment, only: [:show]

  def index
    @appointments = Appointment.order('appointment_time ASC')
    @appointment = Appointment.new
  end


  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      render json: @appointment
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def appointment_params
    params.require(:appointment).permit(:title, :appointment_time)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

end
