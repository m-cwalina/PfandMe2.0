class AddPhoneToPickers < ActiveRecord::Migration[6.1]
  def change
    add_column :pickers, :phone, :string
  end
end
