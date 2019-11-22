class CreateUploaders < ActiveRecord::Migration[6.0]
  def change
    create_table :uploaders do |t|
      t.integer :uploader_id
      t.integer :location_id
      t.string :nick_name

      t.timestamps
    end
    add_index :uploaders, :location_id, unique: true
  end
end
