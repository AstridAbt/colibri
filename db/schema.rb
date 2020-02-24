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

ActiveRecord::Schema.define(version: 2020_02_24_163219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carbone_prints", force: :cascade do |t|
    t.integer "carbone_print_total"
    t.bigint "user_id", null: false
    t.bigint "quest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quest_id"], name: "index_carbone_prints_on_quest_id"
    t.index ["user_id"], name: "index_carbone_prints_on_user_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "points"
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.integer "score"
    t.integer "level"
    t.integer "meat_conso"
    t.integer "oil_conso"
    t.integer "flight_conso"
    t.integer "it_conso"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "carbone_prints", "quests"
  add_foreign_key "carbone_prints", "users"
end
