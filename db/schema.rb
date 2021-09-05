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

ActiveRecord::Schema.define(version: 2021_09_04_120823) do

  create_table "schedules", force: :cascade do |t|
    t.integer "schedule_id"
    t.string "place"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer "price_all"
    t.integer "price_per"
    t.string "court_num"
    t.text "explanation"
    t.boolean "del_flg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule_id"], name: "index_schedules_on_schedule_id"
  end

  create_table "tennis", force: :cascade do |t|
    t.string "name"
    t.integer "flg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_schedules", force: :cascade do |t|
    t.integer "user_id"
    t.integer "schedule_id"
    t.boolean "join_flg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "del_flg"
    t.boolean "admin_flg"
  end

end
