class AddLocationToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :location, :string
  end
end
