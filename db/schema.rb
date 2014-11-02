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

ActiveRecord::Schema.define(version: 20141031121718) do

  create_table "archives", force: true do |t|
    t.integer  "exercise_id"
    t.integer  "tempo"
    t.integer  "time"
    t.text     "note"
    t.text     "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "key_id"
    t.integer  "category_id"
  end

  add_index "archives", ["exercise_id"], name: "index_archives_on_exercise_id"

  create_table "categories", force: true do |t|
    t.string   "name",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "last_practiced"
  end

  create_table "exercises", force: true do |t|
    t.string   "name",           limit: 255
    t.datetime "last_practiced"
    t.integer  "tempo"
    t.integer  "time"
    t.text     "note"
    t.integer  "category_id"
    t.integer  "key_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "link"
  end

  create_table "keys", force: true do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
