class RemoveCapacityFromKayaks < ActiveRecord::Migration[6.0]
  def change
    remove_column :kayaks, :capacity, :integer
  end
end
