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

ActiveRecord::Schema.define(version: 2018_09_15_161111) do

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "address_2"
    t.string "district"
    t.string "state"
    t.integer "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_transactions", force: :cascade do |t|
    t.integer "customer_id"
    t.datetime "date"
    t.string "payment_type"
    t.float "amount"
    t.float "balance_amount"
    t.integer "sales_invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "address_id"
    t.integer "mobile"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.float "rate"
    t.string "hsn"
    t.string "gst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchase_invoices", force: :cascade do |t|
    t.integer "bill_number"
    t.integer "supplier_id"
    t.datetime "date"
    t.float "discount"
    t.string "payment_type"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.integer "purchase_invoice_id"
    t.integer "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_invoices", force: :cascade do |t|
    t.integer "bill_number"
    t.integer "customer_id"
    t.datetime "date"
    t.float "discount"
    t.string "payment_type"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_orders", force: :cascade do |t|
    t.integer "sales_invoice_id"
    t.integer "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplier_transactions", force: :cascade do |t|
    t.integer "supplier_id"
    t.datetime "date"
    t.string "payment_type"
    t.float "amount"
    t.float "balance_amount"
    t.integer "purchase_invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.integer "address_id"
    t.integer "mobile"
    t.string "email"
    t.string "tin_number"
    t.string "gst_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
