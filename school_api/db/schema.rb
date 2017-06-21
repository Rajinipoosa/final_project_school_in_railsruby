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

ActiveRecord::Schema.define(version: 20170620102810) do

  create_table "newsletters", force: :cascade do |t|
    t.text     "details"
    t.datetime "date"
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "newsletters", ["school_id"], name: "index_newsletters_on_school_id"

  create_table "reports", force: :cascade do |t|
    t.string   "name"
    t.text     "details"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "ratings"
  end

  add_index "reports", ["section_id"], name: "index_reports_on_section_id"

  create_table "schools", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "sections", force: :cascade do |t|
    t.text     "name"
    t.integer  "num_of_students"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "school_id"
    t.integer  "user_id"
  end

  add_index "sections", ["school_id"], name: "index_sections_on_school_id"
  add_index "sections", ["user_id"], name: "index_sections_on_user_id"

  create_table "student_reports", force: :cascade do |t|
    t.integer  "section_id"
    t.integer  "student_id"
    t.integer  "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "student_reports", ["report_id"], name: "index_student_reports_on_report_id"
  add_index "student_reports", ["section_id"], name: "index_student_reports_on_section_id"
  add_index "student_reports", ["student_id"], name: "index_student_reports_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.text     "image"
    t.integer  "section_id"
    t.integer  "teacher_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "students", ["section_id"], name: "index_students_on_section_id"
  add_index "students", ["teacher_id"], name: "index_students_on_teacher_id"
  add_index "students", ["user_id"], name: "index_students_on_user_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.text     "email"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teachers", ["section_id"], name: "index_teachers_on_section_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
