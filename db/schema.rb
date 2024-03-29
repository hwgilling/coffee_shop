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

ActiveRecord::Schema.define(version: 20141108192259) do

  create_table "barista_qs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "uid"
    t.string   "password"
    t.string   "email"
    t.integer  "mobile"
    t.string   "payment_type"
    t.string   "payment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drink_items", force: true do |t|
    t.string   "name"
    t.string   "size"
    t.integer  "extra_shot"
    t.string   "milk"
    t.string   "addins"
    t.boolean  "iced"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  create_table "food_items", force: true do |t|
    t.string   "name"
    t.string   "size"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  create_table "food_qs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  create_table "menu_items", force: true do |t|
    t.string   "name"
    t.string   "size"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.decimal  "item_total"
    t.decimal  "tax"
    t.decimal  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.integer  "payment_id"
  end

  create_table "payments", force: true do |t|
    t.string   "type"
    t.string   "authorize"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
