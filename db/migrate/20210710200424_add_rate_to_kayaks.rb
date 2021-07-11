class AddRateToKayaks < ActiveRecord::Migration[6.0]
  def change
    add_column :kayaks, :rate, :decimal, precision: 5, scale: 2
  end
end
