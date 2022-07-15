class AddAmountToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :amount, :decimal
  end
end
