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

ActiveRecord::Schema.define(version: 20150415215204) do

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.string   "tagLine"
    t.date     "serviceValidTil"
    t.string   "domain"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "service_list_name"
    t.string   "template"
  end

  add_index "businesses", ["user_id"], name: "index_businesses_on_user_id"

  create_table "locations", force: :cascade do |t|
    t.string   "street"
    t.string   "city"
    t.string   "geographicalRegion"
    t.string   "country"
    t.string   "postal_code"
    t.integer  "business_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.float    "latitude"
    t.float    "longitude"
    t.time     "sunday_hours_close"
    t.time     "monday_hours_close"
    t.time     "tuesday_hours_close"
    t.time     "wednesday_hours_close"
    t.time     "thursday_hours_close"
    t.time     "friday_hours_close"
    t.time     "saturday_hours_close"
    t.time     "sunday_hours_open"
    t.time     "monday_hours_open"
    t.time     "tuesday_hours_open"
    t.time     "wednesday_hours_open"
    t.time     "thursday_hours_open"
    t.time     "friday_hours_open"
    t.time     "saturday_hours_open"
    t.boolean  "sunday_is_open"
    t.boolean  "monday_is_open"
    t.boolean  "tuesday_is_open"
    t.boolean  "wednesday_is_open"
    t.boolean  "thursday_is_open"
    t.boolean  "friday_is_open"
    t.boolean  "saturday_is_open"
    t.string   "name"
    t.string   "phone_number"
  end

  add_index "locations", ["business_id"], name: "index_locations_on_business_id"

  create_table "service_items", force: :cascade do |t|
    t.string   "title"
    t.text     "summary"
    t.string   "price"
    t.integer  "business_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "service_list_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "service_items", ["business_id"], name: "index_service_items_on_business_id"
  add_index "service_items", ["service_list_id"], name: "index_service_items_on_service_list_id"

  create_table "service_lists", force: :cascade do |t|
    t.string   "title"
    t.integer  "rank"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "business_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
