class DashboardsController < ApplicationController
  before_action :authenticate_picker!

  def employee_dashboard
    @user = current_picker
    @appointments = Appointment.where(status: 'in_progress', date: Date.today, picker_id: current_picker.id)
    @markers = @appointments.geocoded.map do |appointment|
      {
        lat: appointment.latitude,
        lng: appointment.longitude
      }
    end
  end

end
