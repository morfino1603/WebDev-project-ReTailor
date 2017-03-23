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

ActiveRecord::Schema.define(version: 20170318083801) do

  create_table "buyers", force: :cascade do |t|
    t.string   "buyer_name"
    t.text     "buyer_contact"
    t.string   "buyer_username"
    t.string   "buyer_password"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "buyer_address"
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.text     "product_description"
    t.decimal  "price"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "tailor_id"
  end

  create_table "tailors", force: :cascade do |t|
    t.string   "tailor_name"
    t.text     "tailor_address"
    t.text     "tailor_contact"
    t.string   "tailor_username"
    t.string   "tailor_password"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
