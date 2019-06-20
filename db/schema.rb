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

ActiveRecord::Schema.define(version: 2019_06_20_220916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.string "author"
    t.bigint "waste_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["waste_id"], name: "index_comments_on_waste_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.string "content"
    t.bigint "waste_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["waste_id"], name: "index_solutions_on_waste_id"
  end

  create_table "wastes", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_wastes_on_category_id"
  end

  add_foreign_key "comments", "wastes"
  add_foreign_key "solutions", "wastes"
  add_foreign_key "wastes", "categories"
end
