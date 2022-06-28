# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_28_194342) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "building_number"
    t.integer "flat_number"
    t.string "post_code"
    t.string "city"
    t.string "country"
    t.decimal "lat"
    t.decimal "lng"
    t.text "description"
    t.integer "floor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flats", force: :cascade do |t|
    t.integer "square_footage"
    t.text "description"
    t.bigint "user_id", null: false
    t.bigint "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_flats_on_address_id"
    t.index ["user_id"], name: "index_flats_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "expire_at"
    t.bigint "price_id", null: false
    t.bigint "flat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_offers_on_flat_id"
    t.index ["price_id"], name: "index_offers_on_price_id"
  end

  create_table "prices", force: :cascade do |t|
    t.decimal "lent_price"
    t.decimal "rent_price"
    t.decimal "media_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "flats", "addresses"
  add_foreign_key "flats", "users"
  add_foreign_key "offers", "flats"
  add_foreign_key "offers", "prices"
end
