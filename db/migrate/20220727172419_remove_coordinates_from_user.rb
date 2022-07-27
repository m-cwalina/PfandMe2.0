class RemoveCoordinatesFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :longitude, :float
    remove_column :users, :latitude, :float
  end
end
