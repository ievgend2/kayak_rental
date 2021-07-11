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

ActiveRecord::Schema.define(version: 2021_07_11_150943) do

  create_table "customers", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "email", default: "", null: false
    t.string "url"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "kayaks", force: :cascade do |t|
    t.integer "customer_id"
    t.string "model"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "rate", precision: 5, scale: 2
    t.string "description"
    t.string "capacity"
    t.index ["customer_id"], name: "index_kayaks_on_customer_id"
  end

  create_table "reservation_kayaks", force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.integer "kayak_id", null: false
    t.index ["kayak_id"], name: "index_reservation_kayaks_on_kayak_id"
    t.index ["reservation_id"], name: "index_reservation_kayaks_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "kayak_id"
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "location"
    t.index ["customer_id"], name: "index_reservations_on_customer_id"
    t.index ["kayak_id"], name: "index_reservations_on_kayak_id"
  end

  add_foreign_key "reservation_kayaks", "kayaks"
  add_foreign_key "reservation_kayaks", "reservations"
end
