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

ActiveRecord::Schema.define(version: 20151104100836) do

  create_table "customers", force: true do |t|
    t.string   "customer_name"
    t.string   "city"
    t.integer  "representative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["representative_id"], name: "index_customers_on_representative_id"

  create_table "inventories", force: true do |t|
    t.string   "description"
    t.integer  "quantity_on_hand"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.integer  "customer_id"
    t.date     "invoice_date"
    t.integer  "item_number_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["customer_id"], name: "index_invoices_on_customer_id"
  add_index "invoices", ["item_number_id"], name: "index_invoices_on_item_number_id"

  create_table "representatives", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "region"
    t.date     "hire_date"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
