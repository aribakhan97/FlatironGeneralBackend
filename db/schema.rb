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

ActiveRecord::Schema.define(version: 2020_11_19_212513) do

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "speciality"
    t.integer "office_id"
  end

  create_table "exams", force: :cascade do |t|
    t.integer "patient_id"
    t.datetime "date"
    t.string "vitals"
    t.string "diagnosis"
    t.string "comments"
    t.string "physical"
  end

  create_table "offices", force: :cascade do |t|
    t.string "name"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "profile"
    t.string "comments"
    t.boolean "has_covid"
    t.integer "office_id"
    t.integer "age"
    t.string "gender"
    t.string "floor"
    t.string "reason_for_visit"
    t.boolean "priority"
  end

end
