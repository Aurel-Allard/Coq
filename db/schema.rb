# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180227140837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "details", force: :cascade do |t|
    t.boolean "is_a_surprise"
    t.date "date"
    t.string "housing_type"
    t.string "activity_type"
    t.text "points_of_attention"
    t.jsonb "payment"
    t.string "state"
    t.bigint "journey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "EUR", null: false
    t.index ["journey_id"], name: "index_details_on_journey_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.string "people_count"
    t.string "origin"
    t.string "destination_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.string "booking_ip"
    t.string "status", default: "Pending"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "gender"
    t.string "address"
    t.date "birth_date"
    t.string "phone"
    t.boolean "contact"
    t.bigint "journey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "admin"
    t.string "traveler_two_name"
    t.string "traveler_two_surname"
    t.string "traveler_two_gender"
    t.string "traveler_two_age"
    t.string "traveler_two_email"
    t.string "traveler_three_name"
    t.string "traveler_three_surname"
    t.string "traveler_three_gender"
    t.string "traveler_three_age"
    t.string "traveler_three_email"
    t.string "traveler_four_name"
    t.string "traveler_four_surname"
    t.string "traveler_four_gender"
    t.string "traveler_four_age"
    t.string "traveler_four_email"
    t.string "traveler_five_name"
    t.string "traveler_five_surname"
    t.string "traveler_five_gender"
    t.string "traveler_five_age"
    t.string "traveler_five_email"
    t.string "traveler_six_name"
    t.string "traveler_six_surname"
    t.string "traveler_six_gender"
    t.string "traveler_six_age"
    t.string "traveler_six_email"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["journey_id"], name: "index_users_on_journey_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "details", "journeys"
  add_foreign_key "users", "journeys"
end
