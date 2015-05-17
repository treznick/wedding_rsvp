# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150517182404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meal_choices", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "description"
    t.string   "reporting_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rsvps", force: :cascade do |t|
    t.string   "name"
    t.boolean  "attending"
    t.text     "dietary_restrictions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "meal_choice_id"
  end

  add_index "rsvps", ["meal_choice_id"], name: "index_rsvps_on_meal_choice_id", using: :btree

  add_foreign_key "rsvps", "meal_choices"
end
