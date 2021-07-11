class CreateReservationKayaks < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_kayaks do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :kayak, null: false, foreign_key: true
    end
  end
end
