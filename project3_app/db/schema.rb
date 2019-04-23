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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_04_23_073300) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_04_22_130712) do
=======

ActiveRecord::Schema.define(version: 2019_04_22_130712) do

>>>>>>> 93c4f7203d70c4d65960eccfd3a318c9f687e720
>>>>>>> b8aeb1186c440800a963a457967966f9d8897875

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.integer "num"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Allergy"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "caredom_id"
    t.integer "caregiver_id"
    t.integer "request_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seniors", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.string "explainsituation"
    t.datetime "date"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "phone"
    t.string "nationality"
    t.boolean "care"
    t.bigint "city_id"
    t.string "area"
    t.string "address"
    t.integer "age"
    t.string "experience"
    t.string "description"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "users", "cities"
end
