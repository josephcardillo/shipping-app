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

ActiveRecord::Schema.define(version: 2018_04_23_151234) do

  create_table "boats", force: :cascade do |t|
    t.string "name"
    t.integer "container_volume"
    t.string "location"
    t.integer "shipper_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["job_id"], name: "index_boats_on_job_id"
    t.index ["shipper_id"], name: "index_boats_on_shipper_id"
  end

  create_table "boats_jobs", id: false, force: :cascade do |t|
    t.integer "boat_id", null: false
    t.integer "job_id", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "origin"
    t.string "destination"
    t.integer "cost"
    t.integer "containers_needed"
    t.integer "shipper_id"
    t.integer "boat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id"], name: "index_jobs_on_boat_id"
    t.index ["shipper_id"], name: "index_jobs_on_shipper_id"
  end

  create_table "shippers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["email"], name: "index_shippers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_shippers_on_reset_password_token", unique: true
  end

end
