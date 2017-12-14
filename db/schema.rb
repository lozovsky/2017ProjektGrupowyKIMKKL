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

ActiveRecord::Schema.define(version: 20171214130553) do

  create_table "distances", force: :cascade do |t|
    t.integer "from_stop_id"
    t.integer "to_stop_id"
    t.integer "travel_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_stop_id", "to_stop_id"], name: "index_distances_on_from_stop_id_and_to_stop_id", unique: true
    t.index ["from_stop_id"], name: "index_distances_on_from_stop_id"
    t.index ["to_stop_id"], name: "index_distances_on_to_stop_id"
  end

  create_table "lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.integer "line_id"
    t.integer "distance_id"
    t.integer "stop_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id", "stop_number"], name: "index_routes_on_line_id_and_stop_number", unique: true
    t.index ["line_id"], name: "index_routes_on_line_id"
  end

  create_table "stops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.integer "line_id"
    t.time "departure_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["line_id"], name: "index_timetables_on_line_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "name"
    t.string "surname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nickname"], name: "index_users_on_nickname", unique: true
  end

end
