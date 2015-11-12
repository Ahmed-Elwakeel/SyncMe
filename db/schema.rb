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

ActiveRecord::Schema.define(version: 20151112123226) do

  create_table "friendposts", force: :cascade do |t|
    t.integer  "user_a",     limit: 4
    t.integer  "user_b",     limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_a",     limit: 4
    t.integer  "user_b",     limit: 4
    t.integer  "status",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "post_id",    limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "songpostusers", force: :cascade do |t|
    t.integer  "song_id",    limit: 4
    t.integer  "post_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "songs", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "f_name",      limit: 255
    t.string   "l_name",      limit: 255
    t.string   "country",     limit: 255
    t.string   "city",        limit: 255
    t.date     "b_date"
    t.boolean  "gender",      limit: 1
    t.string   "profile_pic", limit: 255
    t.text     "bio",         limit: 65535
    t.string   "email",       limit: 255
    t.string   "password",    limit: 255
    t.string   "phone",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
