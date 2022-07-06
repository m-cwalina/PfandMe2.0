class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @user = current_user
    @appointment.user = @user
    @appointment.save
    @picker = Picker.within(1, origin: [@appointment.latitude, @appointment.longitude]).last
    @appointment.picker = @picker
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def appointment_params
    params.require(:appointment).permit(:address, :time, :date)
  end
end
