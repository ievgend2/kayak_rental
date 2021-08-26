class RemovePhotoFromKayaks < ActiveRecord::Migration[6.0]
  def change
    remove_column :kayaks, :photo, :string
  end
end
