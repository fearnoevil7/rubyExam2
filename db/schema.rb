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

ActiveRecord::Schema.define(version: 20210105050911) do

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "User_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["User_id"], name: "index_groups_on_User_id"
  end

  create_table "joins", force: :cascade do |t|
    t.integer  "User_id"
    t.integer  "Group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Group_id"], name: "index_joins_on_Group_id"
    t.index ["User_id"], name: "index_joins_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
