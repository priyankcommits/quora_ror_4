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

ActiveRecord::Schema.define(version: 20160830134838) do

  create_table "answers", force: :cascade do |t|
    t.string   "text"
    t.boolean  "isactive"
    t.boolean  "isspam"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "upvotes"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "text"
    t.boolean  "isactive"
    t.boolean  "ispam"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "answer_id"
    t.integer  "user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.boolean  "read"
    t.string   "not_type"
    t.integer  "from_id"
    t.integer  "to_id"
    t.string   "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.boolean  "isactive"
    t.boolean  "isspam"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_follows", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "following_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "user_name"
    t.string "sex"
    t.string "image_url"
    t.string "website"
    t.string "status"
    t.string "uid"
  end

  create_table "user_topics", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
    t.string   "topic_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "uid"
    t.string   "name"
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

end
