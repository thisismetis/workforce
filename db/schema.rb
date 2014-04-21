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

ActiveRecord::Schema.define(version: 20140421182936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "behavior_reports", force: true do |t|
    t.date     "date"
    t.text     "description"
    t.text     "action_taken"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_title_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "job_title_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  create_table "job_titles", force: true do |t|
    t.string "name"
  end

  create_table "office_branches", force: true do |t|
    t.string   "city",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "country"
  end

  create_table "performance_reviews", force: true do |t|
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.text     "about"
    t.date     "start_date"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "salaries", force: true do |t|
    t.decimal  "salary"
    t.date     "date"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "category"
    t.string   "rating"
    t.text     "note"
    t.integer  "performance_review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "email",                                          null: false
    t.string   "encrypted_password", limit: 128,                 null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128,                 null: false
    t.boolean  "admin",                          default: false
    t.string   "name",               limit: 50,                  null: false
    t.integer  "department_id"
    t.text     "address"
    t.string   "phone_number"
    t.string   "emergency_name"
    t.string   "emergency_number"
    t.string   "emergency_relation"
    t.integer  "office_branch_id"
  end

  add_index "users", ["department_id"], name: "index_users_on_department_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["office_branch_id"], name: "index_users_on_office_branch_id", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
