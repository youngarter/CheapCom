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

ActiveRecord::Schema.define(version: 2018_11_26_164701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientreviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.bigint "client_id"
    t.bigint "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_clientreviews_on_client_id"
    t.index ["seller_id"], name: "index_clientreviews_on_seller_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.text "address"
    t.string "city"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productpics", force: :cascade do |t|
    t.text "alt"
    t.text "src"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_productpics_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.bigint "producttype_id"
    t.bigint "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producttype_id"], name: "index_products_on_producttype_id"
    t.index ["seller_id"], name: "index_products_on_seller_id"
  end

  create_table "producttypes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "product_id"
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_sales_on_client_id"
    t.index ["product_id"], name: "index_sales_on_product_id"
  end

  create_table "searcheds", force: :cascade do |t|
    t.string "location"
    t.string "keyword"
    t.bigint "client_id"
    t.bigint "producttype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_searcheds_on_client_id"
    t.index ["producttype_id"], name: "index_searcheds_on_producttype_id"
  end

  create_table "sellerreviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.bigint "seller_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_sellerreviews_on_client_id"
    t.index ["seller_id"], name: "index_sellerreviews_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.text "address"
    t.string "city"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clientreviews", "clients"
  add_foreign_key "clientreviews", "sellers"
  add_foreign_key "productpics", "products"
  add_foreign_key "products", "producttypes"
  add_foreign_key "products", "sellers"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "products"
  add_foreign_key "searcheds", "clients"
  add_foreign_key "searcheds", "producttypes"
  add_foreign_key "sellerreviews", "clients"
  add_foreign_key "sellerreviews", "sellers"
end
