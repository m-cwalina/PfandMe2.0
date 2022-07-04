class AppointmentsController < ApplicationController
  def new
    @user = current_user
    @appointment = Appointment.new
  end
end
