class AddReservationToKayaks < ActiveRecord::Migration[6.0]
  def change
    add_column :kayaks, :reservation_id, :integer
    add_index :kayaks, :reservation_id
  end
end
