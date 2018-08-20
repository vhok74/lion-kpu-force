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

ActiveRecord::Schema.define(version: 20180818082518) do

  create_table "branches", force: :cascade do |t|
    t.string "universe"
    t.string "major"
    t.integer "operator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["operator_id"], name: "index_branches_on_operator_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_menus_on_branch_id"
  end

  create_table "operators", force: :cascade do |t|
    t.string "user_id"
    t.string "password_digest"
    t.string "phone"
    t.string "status"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "seat_used_id"
    t.integer "menu_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_orders_on_menu_id"
    t.index ["seat_used_id"], name: "index_orders_on_seat_used_id"
  end

  create_table "seat_onuses", force: :cascade do |t|
    t.string "hash_code"
    t.integer "structure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["structure_id"], name: "index_seat_onuses_on_structure_id"
  end

  create_table "seat_strutures", force: :cascade do |t|
    t.string "name"
    t.integer "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_seat_strutures_on_branch_id"
  end
  
  create_table "users", force: :cascade do |t|
    t.string "user_id"
    t.string "pw"
    t.string "phone"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
