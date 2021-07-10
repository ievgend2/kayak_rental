class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :customer
      t.references :kayak
      t.string :name
      t.datetime :start_time
      t.datetime :end_time


      t.timestamps
    end
  end
end
