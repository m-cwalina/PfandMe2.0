class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: [:update]

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.save
    @picker = Picker.within(1, origin: [@appointment.latitude, @appointment.longitude]).first
    @appointment.picker = @picker
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @markers = @appointment.geocode.map do
      {
        lat: @appointment.latitude,
        lng: @appointment.longitude
      }
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.status = "completed"
    @appointment.save
    redirect_to employee_dashboard_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:address, :time, :date, :bottle, :status)
  end
end
