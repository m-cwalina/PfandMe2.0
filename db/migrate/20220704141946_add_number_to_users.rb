class AddNumberToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :number, :string
  end
end
