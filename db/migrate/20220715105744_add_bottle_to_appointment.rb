class AddBottleToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :bottle, :string
  end
end
