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

ActiveRecord::Schema.define(version: 20170108174130) do

  create_table "inventories", force: :cascade do |t|
    t.integer  "warehouse_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "inventories", ["warehouse_id"], name: "index_inventories_on_warehouse_id"

  create_table "orders", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "product_count"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "inventory_id"
    t.integer  "order_id"
  end

  add_index "products", ["inventory_id"], name: "index_products_on_inventory_id"
  add_index "products", ["order_id"], name: "index_products_on_order_id"

  create_table "shipments", force: :cascade do |t|
    t.string   "number"
    t.integer  "warehouse_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "order_id"
  end

  add_index "shipments", ["order_id"], name: "index_shipments_on_order_id"
  add_index "shipments", ["warehouse_id"], name: "index_shipments_on_warehouse_id"

  create_table "warehouses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
