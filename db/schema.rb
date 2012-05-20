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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120520131416) do

  create_table "administrators", :force => true do |t|
    t.string   "adminId"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "students", :force => true do |t|
    t.integer  "stuId",           :null => false
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "name"
    t.string   "majored"
    t.string   "grade"
    t.string   "email"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex"
  end

  create_table "teachers", :force => true do |t|
    t.string   "tchId"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "name"
    t.string   "department"
    t.string   "email"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "state"
  end

  create_table "theses", :force => true do |t|
    t.integer  "item"
    t.string   "title"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.text     "summary"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
