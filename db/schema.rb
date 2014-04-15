
ActiveRecord::Schema.define(version: 20140414185125) do
  enable_extension "plpgsql"
  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.text     "about"
    t.string   "picture_url", null: false
    t.string   "name",        null: false
    t.date     "start_date"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree
  create_table "users", force: true do |t|
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "email",                                          null: false
    t.string   "encrypted_password", limit: 128,                 null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128,                 null: false
    t.boolean  "admin",                          default: false
  end
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
end
