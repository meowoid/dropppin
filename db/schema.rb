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

ActiveRecord::Schema.define(version: 20131229173818) do

  create_table "places", force: true do |t|
    t.string   "name"
    t.string   "reference"
    t.integer  "user_id"
    t.boolean  "done",                   default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "lat",                    precision: 8, scale: 6
    t.decimal  "lng",                    precision: 9, scale: 6
    t.string   "address",    limit: nil
    t.boolean  "cleared"                 default: false, null: false
  end

  add_index "places", ["user_id"], name: "index_places_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
