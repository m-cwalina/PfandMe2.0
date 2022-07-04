class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.time :time
      t.date :date
      t.string :address
      t.references :user, null: false, foreign_key: true
      t.references :picker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
