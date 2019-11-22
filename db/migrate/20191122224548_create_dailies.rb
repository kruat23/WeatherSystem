class CreateDailies < ActiveRecord::Migration[6.0]
  def change
    create_table :dailies do |t|
      t.belongs_to :uploader
      t.string :uploader_id
      t.string :location_id
      t.string :month
      t.integer :day
      t.float :min
      t.float :max
      t.float :precipitation
      t.boolean :storm
      t.boolean :shower
      t.boolean :rain
      t.boolean :fog
      t.boolean :sleet
      t.boolean :snow
      t.boolean :snow_shower
      t.integer :snow_cover
      t.text :note

      t.timestamps
    end
    add_index :dailies, :uploader_id, unique: true
    add_index :dailies, :location_id, unique: true
  end
end
