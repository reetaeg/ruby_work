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

ActiveRecord::Schema.define(version: 20160917162913) do

  create_table "bulletins", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "post_type",   limit: 255,   default: "bulletin"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id",    limit: 4
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

  create_table "nh_sales", force: :cascade do |t|
    t.string   "from_code",           limit: 255
    t.string   "from_name",           limit: 255
    t.string   "sale_number",         limit: 255
    t.string   "confirm_date",        limit: 255
    t.decimal  "delivery_number",                 precision: 10
    t.string   "to_code",             limit: 255
    t.string   "depart_code",         limit: 255
    t.string   "depart_name",         limit: 255
    t.string   "supply_type",         limit: 255
    t.integer  "order_no",            limit: 4
    t.string   "product_code",        limit: 255
    t.string   "product_name",        limit: 255
    t.string   "product_size",        limit: 255
    t.decimal  "product_tax",                     precision: 10
    t.decimal  "purchase_unit_price",             precision: 10
    t.integer  "purchase_amount",     limit: 4
    t.decimal  "supply_price",                    precision: 10
    t.decimal  "purchase_tax",                    precision: 10
    t.decimal  "purchase_price",                  precision: 10
    t.decimal  "commission",                      precision: 10
    t.decimal  "commission_tax",                  precision: 10
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "to_name",             limit: 255
  end

  add_index "nh_sales", ["confirm_date"], name: "index_nh_sales_on_confirm_date", using: :btree
  add_index "nh_sales", ["from_code"], name: "index_nh_sales_on_from_code", using: :btree
  add_index "nh_sales", ["product_code"], name: "index_nh_sales_on_product_code", using: :btree
  add_index "nh_sales", ["sale_number", "order_no"], name: "index_nh_sales_on_sale_number_and_order_no", unique: true, using: :btree
  add_index "nh_sales", ["to_code"], name: "index_nh_sales_on_to_code", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "content",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "bulletin_id", limit: 4
    t.string   "picture",     limit: 255
    t.integer  "user_id",     limit: 4
  end

  add_index "posts", ["bulletin_id"], name: "index_posts_on_bulletin_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.string   "p_type",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role",                   limit: 4
    t.integer  "company_id",             limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "comments", "posts"
end
