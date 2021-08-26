class RemoveKayaIdFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :kayak_id, :integer
  end
end
