class AddDescriptionToKayaks < ActiveRecord::Migration[6.0]
  def change
    add_column :kayaks, :description, :string
  end
end
