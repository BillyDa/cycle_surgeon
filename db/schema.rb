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

ActiveRecord::Schema.define(version: 2018_09_27_192814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accepteds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.text "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ip"
    t.string "street"
    t.string "city"
    t.string "postal_code"
    t.string "province"
    t.text "full_address"
    t.index ["user_id"], name: "index_places_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "repair"
    t.text "description"
    t.integer "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ticket_accepted", default: false
    t.integer "surgeon_id"
    t.boolean "active", default: true
    t.float "user_latitude"
    t.float "user_longitude"
    t.text "user_address"
    t.string "user_street"
    t.string "user_city"
    t.string "user_province"
    t.text "surgeon_address"
    t.string "surgeon_street"
    t.string "surgeon_city"
    t.string "surgeon_province"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.boolean "surgeon", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "username"
    t.text "address"
    t.float "longitude"
    t.float "latitude"
    t.string "street"
    t.string "city"
    t.string "province"
    t.string "country"
  end

end
