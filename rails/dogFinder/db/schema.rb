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

ActiveRecord::Schema.define(version: 20150731141830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.string   "age"
    t.string   "size"
    t.string   "gender"
    t.string   "people"
    t.string   "kids"
    t.string   "other_dogs"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "breed"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "shelter_id"
  end

  add_index "dogs", ["age"], name: "index_dogs_on_age", using: :btree
  add_index "dogs", ["breed"], name: "index_dogs_on_breed", using: :btree
  add_index "dogs", ["gender"], name: "index_dogs_on_gender", using: :btree
  add_index "dogs", ["size"], name: "index_dogs_on_size", using: :btree

  create_table "shelters", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "providence"
    t.string   "postal_code"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.string   "hours"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "volunteers"
  end

  add_index "shelters", ["name"], name: "index_shelters_on_name", using: :btree
  add_index "shelters", ["postal_code"], name: "index_shelters_on_postal_code", using: :btree
  add_index "shelters", ["providence"], name: "index_shelters_on_providence", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
