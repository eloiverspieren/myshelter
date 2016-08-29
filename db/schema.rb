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

ActiveRecord::Schema.define(version: 20160828124551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.date     "start_day"
    t.date     "end_day"
    t.integer  "capacity"
    t.integer  "refuge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["refuge_id"], name: "index_availabilities_on_refuge_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.date     "start_day"
    t.date     "end_day"
    t.integer  "hikers_nb"
    t.integer  "user_id"
    t.integer  "refuge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "status"
    t.index ["refuge_id"], name: "index_bookings_on_refuge_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "guides", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "picture"
    t.integer  "refuge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["refuge_id"], name: "index_guides_on_refuge_id", using: :btree
  end

  create_table "hikings", force: :cascade do |t|
    t.integer  "difficulty"
    t.string   "range"
    t.string   "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "refuge_id"
    t.string   "photo"
    t.string   "name"
    t.index ["refuge_id"], name: "index_hikings_on_refuge_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar_picture"
    t.string   "email"
    t.string   "phone"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "photo"
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "refuge_to_hikes", force: :cascade do |t|
    t.integer  "hiking_id"
    t.integer  "refuge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hiking_id"], name: "index_refuge_to_hikes_on_hiking_id", using: :btree
    t.index ["refuge_id"], name: "index_refuge_to_hikes_on_refuge_id", using: :btree
  end

  create_table "refuges", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "capacity"
    t.string   "address"
    t.integer  "day_price"
    t.string   "description"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "altitude"
    t.string   "range"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "department"
    t.string   "photo"
    t.index ["user_id"], name: "index_refuges_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "content"
    t.string   "picture"
    t.integer  "user_id"
    t.integer  "hiking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "refuge_id"
    t.index ["hiking_id"], name: "index_reviews_on_hiking_id", using: :btree
    t.index ["refuge_id"], name: "index_reviews_on_refuge_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "availabilities", "refuges"
  add_foreign_key "bookings", "refuges"
  add_foreign_key "bookings", "users"
  add_foreign_key "guides", "refuges"
  add_foreign_key "hikings", "refuges"
  add_foreign_key "profiles", "users"
  add_foreign_key "refuge_to_hikes", "hikings"
  add_foreign_key "refuge_to_hikes", "refuges"
  add_foreign_key "refuges", "users"
  add_foreign_key "reviews", "users"
end
