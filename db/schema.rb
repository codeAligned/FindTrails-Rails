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

ActiveRecord::Schema.define(version: 20161129235452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.integer "level"
    t.string  "location"
    t.string  "bio"
  end

  create_table "hiker_groups", force: :cascade do |t|
    t.integer "hiker_id"
    t.integer "group_id"
  end

  create_table "hikers", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.integer "level"
    t.string  "location"
    t.string  "bio"
  end

  create_table "trails", force: :cascade do |t|
    t.string  "name"
    t.integer "difficulty"
    t.string  "location"
    t.integer "length"
    t.integer "hiker_id"
    t.integer "group_id"
    t.index ["group_id"], name: "index_trails_on_group_id", using: :btree
    t.index ["hiker_id"], name: "index_trails_on_hiker_id", using: :btree
  end

  add_foreign_key "trails", "groups"
  add_foreign_key "trails", "hikers"
end
