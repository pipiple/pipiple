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

ActiveRecord::Schema.define(version: 2018_11_10_123702) do

  create_table "owners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  end

  create_table "plan_purposes", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "purpose_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_plan_purposes_on_plan_id"
    t.index ["purpose_id"], name: "index_plan_purposes_on_purpose_id"
  end

  create_table "plans", force: :cascade do |t|
    t.integer "combination1"
    t.integer "combination2"
    t.integer "combination3"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "privates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purposes", force: :cascade do |t|
    t.string "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "submit_purposes", force: :cascade do |t|
    t.integer "submit_id"
    t.integer "purpose_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purpose_id"], name: "index_submit_purposes_on_purpose_id"
    t.index ["submit_id"], name: "index_submit_purposes_on_submit_id"
  end

  create_table "submits", force: :cascade do |t|
    t.string "name"
    t.string "area"
    t.string "mood"
    t.string "price"
    t.text "overview"
    t.string "lunch"
    t.text "lunch_body"
    t.string "lunch_image"
    t.string "lunch_URL"
    t.string "afternoon"
    t.text "afternoon_body"
    t.string "afternoon_image"
    t.string "afternoon_URL"
    t.string "evening"
    t.text "evening_body"
    t.string "evening_image"
    t.string "evening_URL"
    t.string "dinner"
    t.text "dinner_body"
    t.string "dinner_image"
    t.string "dinner_URL"
    t.integer "user_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
