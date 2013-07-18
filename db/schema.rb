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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130718184131) do

  create_table "addresses", :force => true do |t|
    t.string   "street_address"
    t.string   "building_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "from_user_id"
    t.integer  "to_user_id"
    t.string   "message"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "messages", ["from_user_id"], :name => "index_messages_on_from_user_id"
  add_index "messages", ["to_user_id"], :name => "index_messages_on_to_user_id"

  create_table "user_addresses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "address_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_addresses", ["address_id"], :name => "index_user_addresses_on_address_id"
  add_index "user_addresses", ["user_id"], :name => "index_user_addresses_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
