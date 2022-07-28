class AddStatusToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :status, :integer, default: 0
  end
end
