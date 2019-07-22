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

ActiveRecord::Schema.define(version: 20190722121957) do

  create_table "disciplines_enrollments", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "category"
    t.integer  "pre_enrollment_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["pre_enrollment_id"], name: "index_disciplines_enrollments_on_pre_enrollment_id"
  end

  create_table "pre_enrollments", force: :cascade do |t|
    t.string   "semester"
    t.datetime "date_initial"
    t.datetime "date_final"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "record_enrollments", force: :cascade do |t|
    t.integer  "pre_enrollment_id"
    t.integer  "disciplines_enrollment_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["disciplines_enrollment_id"], name: "index_record_enrollments_on_disciplines_enrollment_id"
    t.index ["pre_enrollment_id"], name: "index_record_enrollments_on_pre_enrollment_id"
  end

end
