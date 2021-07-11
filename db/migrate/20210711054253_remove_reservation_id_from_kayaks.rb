class RemoveReservationIdFromKayaks < ActiveRecord::Migration[6.0]
  def change
    remove_column :kayaks, :reservation_id, :integer
  end
end
