class AddCapacityToKayaks < ActiveRecord::Migration[6.0]
  def change
    add_column :kayaks, :capacity, :string
  end
end
