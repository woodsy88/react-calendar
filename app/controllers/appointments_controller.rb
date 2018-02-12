class AppointmentsController < ApplicationController
before_action :set_appointment, only: [:show]

  def index
    @appointments = Appointment.order('appointment_time ASC')
    @appointment = Appointment.new
  end


  def create
    @appointment = Appointment.create(appointment_params)

    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end

  def show
  end

  private

  def appointment_params
    params.require(:appointment).permit(:title, :date)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

end
