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

ActiveRecord::Schema.define(version: 20160930224536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analysts", force: :cascade do |t|
    t.string   "research_method"
    t.string   "reseach_participants"
    t.string   "benefit_from_test"
    t.string   "context"
    t.string   "result"
    t.string   "se_methodology"
    t.string   "se_method"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "paperposts", force: :cascade do |t|
    t.string   "username"
    t.string   "articlecategory"
    t.string   "author"
    t.string   "title"
    t.string   "journalname"
    t.string   "description"
    t.string   "publishername"
    t.integer  "pages"
    t.string   "volume"
    t.datetime "publish_date"
    t.datetime "submitted_date"
    t.string   "status_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "serlerusers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userentries", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "reset_digest"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "userserlers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitors", force: :cascade do |t|
    t.string   "name"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_visitors_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_visitors_on_reset_password_token", unique: true, using: :btree
  end

end
