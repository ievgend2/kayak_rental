class CreateKayaks < ActiveRecord::Migration[6.0]
  def change
    create_table :kayaks do |t|
      t.references :customer
      t.string :name
      t.string :location
      t.integer :capacity
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
