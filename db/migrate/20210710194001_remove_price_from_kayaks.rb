class RemovePriceFromKayaks < ActiveRecord::Migration[6.0]
  def change
    remove_column :kayaks, :price, :integer
  end
end
