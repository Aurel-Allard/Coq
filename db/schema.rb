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

ActiveRecord::Schema.define(version: 20180201193643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "gender"
    t.string "address"
    t.date "birth_date"
    t.string "phone"
    t.string "mail"
    t.boolean "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.boolean "is_a_surprise"
    t.date "date"
    t.string "housing_type"
    t.string "activity_type"
    t.text "points_of_attention"
    t.integer "price"
    t.bigint "journey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journey_id"], name: "index_details_on_journey_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.string "people_count"
    t.string "origin"
    t.string "destination_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "details", "journeys"
end
