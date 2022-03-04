# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_02_043249) do

  create_table "event_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "event_start", precision: 6
    t.datetime "event_end", precision: 6
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events_people", id: false, force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "person_id", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.datetime "start_time", precision: 6
    t.datetime "end_time", precision: 6
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_lessons_on_student_id"
    t.index ["teacher_id"], name: "index_lessons_on_teacher_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "body"
    t.integer "teacher_id"
    t.integer "student_id"
    t.integer "lesson_id"
    t.integer "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_notes_on_event_id"
    t.index ["lesson_id"], name: "index_notes_on_lesson_id"
    t.index ["student_id"], name: "index_notes_on_student_id"
    t.index ["teacher_id"], name: "index_notes_on_teacher_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "lessons", "students"
  add_foreign_key "lessons", "teachers"
  add_foreign_key "notes", "events"
  add_foreign_key "notes", "lessons"
  add_foreign_key "notes", "students"
  add_foreign_key "notes", "teachers"
end
