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

ActiveRecord::Schema.define(version: 20170325062121) do

  create_table "abouts", force: :cascade do |t|
    t.string   "address"
    t.string   "phone"
    t.string   "link_one"
    t.string   "link_two"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "abouts", ["company_id"], name: "index_abouts_on_company_id"

  create_table "activities", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "activities", ["company_id"], name: "index_activities_on_company_id"

  create_table "companies", force: :cascade do |t|
    t.string   "image"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "galeries", force: :cascade do |t|
    t.string   "image"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "galeries", ["company_id"], name: "index_galeries_on_company_id"

end
