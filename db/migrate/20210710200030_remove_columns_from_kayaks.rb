class RemoveColumnsFromKayaks < ActiveRecord::Migration[6.0]
  def change
    remove_column :kayaks, :rate, :string
    remove_column :kayaks, :decimal5, :string
    remove_column :kayaks, :decimal2, :string
  end
end
