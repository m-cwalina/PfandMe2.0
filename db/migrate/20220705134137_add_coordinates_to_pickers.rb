class AddCoordinatesToPickers < ActiveRecord::Migration[6.1]
  def change
    add_column :pickers, :latitude, :float
    add_column :pickers, :longitude, :float
  end
end
