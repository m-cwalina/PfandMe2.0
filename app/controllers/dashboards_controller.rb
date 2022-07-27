class DashboardsController < ApplicationController
  def employee_dashboard
    @user = current_picker
    @appointments = Appointment.all
    @markers = @appointments.geocoded.map do |appointment|
      {
        lat: appointment.latitude,
        lng: appointment.longitude
      }
    end
  end
end
