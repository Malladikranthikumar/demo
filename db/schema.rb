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

ActiveRecord::Schema.define(version: 20160210094444) do

  create_table "brands", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dnt_platforms", force: true do |t|
    t.integer  "segment_id"
    t.string   "desktop_accepted_flag",      limit: 1, null: false
    t.string   "mobile_accepted_flag",       limit: 1, null: false
    t.string   "tablet_accepted_flag",       limit: 1, null: false
    t.string   "connected_tv_accepted_flag", limit: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dnt_platforms", ["segment_id"], name: "index_dnt_platforms_on_segment_id"

  create_table "keywords", force: true do |t|
    t.string   "keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "name"
    t.string   "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "posts", ["email"], name: "index_posts_on_email", unique: true
  add_index "posts", ["reset_password_token"], name: "index_posts_on_reset_password_token", unique: true

  create_table "products", force: true do |t|
    t.string  "brand_name"
    t.integer "quantity"
    t.text    "description"
  end

  create_table "sites", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
