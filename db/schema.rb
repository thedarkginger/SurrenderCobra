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

ActiveRecord::Schema.define(version: 20160803040714) do

  create_table "cements", force: :cascade do |t|
    t.string   "username"
    t.integer  "user"
    t.string   "post"
    t.integer  "upvotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.string   "location"
  end

  create_table "entries", force: :cascade do |t|
    t.string   "type"
    t.string   "title"
    t.string   "slug"
    t.string   "payload"
    t.integer  "user_id"
    t.string   "author"
    t.datetime "published_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "category"
    t.string   "title"
    t.datetime "published_at"
    t.integer  "user_id"
    t.string   "author"
    t.string   "slug"
    t.string   "payload"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "content"
    t.string   "subdomain"
    t.string   "headerimg"
  end

  create_table "reaxes", force: :cascade do |t|
    t.integer  "user"
    t.string   "username"
    t.string   "post"
    t.datetime "submission"
    t.integer  "upvotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
