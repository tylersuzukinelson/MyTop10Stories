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

ActiveRecord::Schema.define(version: 20150205054614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archives", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "week"
    t.integer  "pos1"
    t.integer  "pos2"
    t.integer  "pos3"
    t.integer  "pos4"
    t.integer  "pos5"
    t.integer  "pos6"
    t.integer  "pos7"
    t.integer  "pos8"
    t.integer  "pos9"
    t.integer  "pos10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "archives", ["pos1"], name: "index_archives_on_pos1", using: :btree
  add_index "archives", ["pos10"], name: "index_archives_on_pos10", using: :btree
  add_index "archives", ["pos2"], name: "index_archives_on_pos2", using: :btree
  add_index "archives", ["pos3"], name: "index_archives_on_pos3", using: :btree
  add_index "archives", ["pos4"], name: "index_archives_on_pos4", using: :btree
  add_index "archives", ["pos5"], name: "index_archives_on_pos5", using: :btree
  add_index "archives", ["pos6"], name: "index_archives_on_pos6", using: :btree
  add_index "archives", ["pos7"], name: "index_archives_on_pos7", using: :btree
  add_index "archives", ["pos8"], name: "index_archives_on_pos8", using: :btree
  add_index "archives", ["pos9"], name: "index_archives_on_pos9", using: :btree
  add_index "archives", ["user_id"], name: "index_archives_on_user_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.text     "sample"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "followships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "follows"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "followships", ["follows"], name: "index_followships_on_follows", using: :btree
  add_index "followships", ["user_id"], name: "index_followships_on_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "ranking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["ranking_id"], name: "index_likes_on_ranking_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "rankings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "article_id"
    t.integer  "rank"
    t.integer  "week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rankings", ["article_id"], name: "index_rankings_on_article_id", using: :btree
  add_index "rankings", ["user_id"], name: "index_rankings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "screen_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "location"
    t.string   "time_zone"
    t.string   "image"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  add_foreign_key "archives", "articles", column: "pos1"
  add_foreign_key "archives", "articles", column: "pos10"
  add_foreign_key "archives", "articles", column: "pos2"
  add_foreign_key "archives", "articles", column: "pos3"
  add_foreign_key "archives", "articles", column: "pos4"
  add_foreign_key "archives", "articles", column: "pos5"
  add_foreign_key "archives", "articles", column: "pos6"
  add_foreign_key "archives", "articles", column: "pos7"
  add_foreign_key "archives", "articles", column: "pos8"
  add_foreign_key "archives", "articles", column: "pos9"
  add_foreign_key "archives", "users"
  add_foreign_key "followships", "users"
  add_foreign_key "followships", "users", column: "follows"
  add_foreign_key "likes", "rankings"
  add_foreign_key "likes", "users"
  add_foreign_key "rankings", "articles"
  add_foreign_key "rankings", "users"
end
