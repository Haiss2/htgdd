# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_03_013255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "label"
    t.integer "volumn"
    t.jsonb "info", default: {}
    t.bigint "program_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["program_id"], name: "index_courses_on_program_id"
  end

  create_table "diems", force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "student_id"
    t.string "mark"
    t.jsonb "info", default: {}
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_diems_on_course_id"
    t.index ["student_id"], name: "index_diems_on_student_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.integer "semester"
    t.jsonb "info", default: {}
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.decimal "cpa", default: "0.0"
    t.decimal "gpa", default: "0.0"
    t.jsonb "info", default: {}
    t.string "program"
    t.integer "current_semester"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "courses", "programs"
  add_foreign_key "diems", "courses"
  add_foreign_key "diems", "students"
end
