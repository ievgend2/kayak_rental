class RemoveLocationFromKayaks < ActiveRecord::Migration[6.0]
  def change
    remove_column :kayaks, :location, :string
  end
end
