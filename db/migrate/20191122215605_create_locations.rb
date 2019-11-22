class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.belongs_to :daily
      t.belongs_to :uploader
      t.integer :location_id
      t.string :city
      t.string :county
      t.string :country

      t.timestamps
    end
  end
end
