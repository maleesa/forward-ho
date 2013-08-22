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

ActiveRecord::Schema.define(version: 20130822202949) do

  create_table "item_suppliers", force: true do |t|
    t.integer  "item_id"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "item_suppliers", ["item_id"], name: "index_item_suppliers_on_item_id"
  add_index "item_suppliers", ["supplier_id"], name: "index_item_suppliers_on_supplier_id"

  create_table "items", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.float    "current_amount"
    t.float    "min_amount"
    t.float    "max_amount"
    t.float    "purchase_amount"
    t.text     "notes"
    t.string   "unit_name"
    t.float    "unit_quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["user_id"], name: "index_items_on_user_id"

  create_table "itemstoragelocations", force: true do |t|
    t.integer  "item_id"
    t.integer  "storage_location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itemstoragelocations", ["item_id"], name: "index_itemstoragelocations_on_item_id"
  add_index "itemstoragelocations", ["storage_location_id"], name: "index_itemstoragelocations_on_storage_location_id"

  create_table "storage_locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.boolean  "primary"
    t.boolean  "secondary"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "user_id"
    t.integer  "storage_location_id"
    t.text     "description"
    t.datetime "checked_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["storage_location_id"], name: "index_tasks_on_storage_location_id"
  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
