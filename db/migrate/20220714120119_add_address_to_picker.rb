class AddAddressToPicker < ActiveRecord::Migration[6.1]
  def change
    add_column :pickers, :address, :string
  end
end
