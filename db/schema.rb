# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_22_224548) do

  create_table "dailies", force: :cascade do |t|
    t.string "uploader_id"
    t.string "location_id"
    t.string "month"
    t.integer "day"
    t.float "min"
    t.float "max"
    t.float "precipitation"
    t.boolean "storm"
    t.boolean "shower"
    t.boolean "rain"
    t.boolean "fog"
    t.boolean "sleet"
    t.boolean "snow"
    t.boolean "snow_shower"
    t.integer "snow_cover"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_dailies_on_location_id", unique: true
    t.index ["uploader_id"], name: "index_dailies_on_uploader_id", unique: true
  end

  create_table "locations", force: :cascade do |t|
    t.integer "location_id"
    t.string "city"
    t.string "county"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phenomenons", force: :cascade do |t|
    t.boolean "storm"
    t.boolean "shower"
    t.boolean "rain"
    t.boolean "fog"
    t.boolean "sleet"
    t.boolean "snow"
    t.boolean "snowshower"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "uploaders", force: :cascade do |t|
    t.integer "uploader_id"
    t.integer "location_id"
    t.string "nick_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_uploaders_on_location_id", unique: true
  end

end
