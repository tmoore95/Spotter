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

ActiveRecord::Schema.define(version: 2021_06_07_153058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "check_ins", force: :cascade do |t|
    t.bigint "skater_id", null: false
    t.bigint "spot_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skater_id"], name: "index_check_ins_on_skater_id"
    t.index ["spot_id"], name: "index_check_ins_on_spot_id"
  end

  create_table "skaters", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.index ["email"], name: "index_skaters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_skaters_on_reset_password_token", unique: true
  end

  create_table "spots", force: :cascade do |t|
    t.string "name"
    t.boolean "stairset"
    t.boolean "ledge"
    t.boolean "cover"
    t.boolean "flatground"
    t.string "security"
    t.string "location"
    t.bigint "skater_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.index ["skater_id"], name: "index_spots_on_skater_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "url"
    t.string "caption"
    t.bigint "skater_id", null: false
    t.bigint "spot_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skater_id"], name: "index_tags_on_skater_id"
    t.index ["spot_id"], name: "index_tags_on_spot_id"
  end

  add_foreign_key "check_ins", "skaters"
  add_foreign_key "check_ins", "spots"
  add_foreign_key "spots", "skaters"
  add_foreign_key "tags", "skaters"
  add_foreign_key "tags", "spots"
end
