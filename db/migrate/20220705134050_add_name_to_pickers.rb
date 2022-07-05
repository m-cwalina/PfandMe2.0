class AddNameToPickers < ActiveRecord::Migration[6.1]
  def change
    add_column :pickers, :name, :string
  end
end
