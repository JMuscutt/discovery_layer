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

ActiveRecord::Schema.define(version: 20170406175912) do

  create_table "ahoy_events", force: :cascade do |t|
    t.uuid     "visit_id",   limit: 16
    t.integer  "user_id"
    t.string   "name"
    t.text     "properties"
    t.datetime "time"
  end

  add_index "ahoy_events", ["id"], name: "sqlite_autoindex_ahoy_events_1", unique: true
  add_index "ahoy_events", ["time"], name: "index_ahoy_events_on_time"
  add_index "ahoy_events", ["user_id"], name: "index_ahoy_events_on_user_id"
  add_index "ahoy_events", ["visit_id"], name: "index_ahoy_events_on_visit_id"

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.string   "user_type"
    t.string   "document_id"
    t.string   "document_type"
    t.binary   "title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "bookmarks", ["document_id"], name: "index_bookmarks_on_document_id"
  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id"

  create_table "cover_images", force: :cascade do |t|
    t.string   "isbn"
    t.string   "thumbnail_url"
    t.string   "full_url"
    t.string   "solr_id"
    t.string   "oclc_number"
    t.string   "lccn"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "cover_images", ["solr_id"], name: "index_cover_images_on_solr_id", unique: true

  create_table "metadata_view_fingerprints", force: :cascade do |t|
    t.text     "document_id"
    t.text     "database_code"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "search_fingerprints", force: :cascade do |t|
    t.text     "query_string"
    t.text     "facets_used"
    t.boolean  "known_item"
    t.integer  "page"
    t.uuid     "visit_id",     limit: 16
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "searches", force: :cascade do |t|
    t.binary   "query_params"
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "searches", ["user_id"], name: "index_searches_on_user_id"

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "user_fingerprints", force: :cascade do |t|
    t.boolean  "on_campus"
    t.boolean  "in_district"
    t.boolean  "localhost"
    t.boolean  "bot_visitor"
    t.text     "postal_code"
    t.uuid     "visit_id",    limit: 16
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "user_fingerprints", ["visit_id"], name: "index_user_fingerprints_on_visit_id", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "guest",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "visits", force: :cascade do |t|
    t.uuid     "visitor_id",       limit: 16
    t.string   "ip"
    t.text     "user_agent"
    t.text     "referrer"
    t.text     "landing_page"
    t.integer  "user_id"
    t.string   "referring_domain"
    t.string   "search_keyword"
    t.string   "browser"
    t.string   "os"
    t.string   "device_type"
    t.integer  "screen_height"
    t.integer  "screen_width"
    t.string   "country"
    t.string   "region"
    t.string   "city"
    t.string   "postal_code"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "utm_source"
    t.string   "utm_medium"
    t.string   "utm_term"
    t.string   "utm_content"
    t.string   "utm_campaign"
    t.datetime "started_at"
  end

  add_index "visits", ["id"], name: "sqlite_autoindex_visits_1", unique: true
  add_index "visits", ["user_id"], name: "index_visits_on_user_id"

end
