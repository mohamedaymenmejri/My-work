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

ActiveRecord::Schema.define(version: 20141204133003) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_subjects", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "subject_id"
  end

  create_table "feedbacks", force: true do |t|
    t.integer  "user_id"
    t.string   "subject_id"
    t.string   "string"
    t.string   "strenghts"
    t.string   "weaknesses"
    t.string   "recommandation"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["user_id", "subject_id", "created_at"], name: "index_feedbacks_on_user_id_and_subject_id_and_created_at"

  create_table "grades", force: true do |t|
    t.integer  "mark"
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "microposts_tags", id: false, force: true do |t|
    t.integer "micropost_id"
    t.integer "tag_id"
  end

  create_table "subjects", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "course_id"
    t.string   "description"
    t.integer  "ca_percent"
    t.integer  "final_exam_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "StudentID"
    t.string   "course_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
