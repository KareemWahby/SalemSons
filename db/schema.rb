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

ActiveRecord::Schema.define(version: 20150409122342) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "images", force: :cascade do |t|
    t.string  "name",   limit: 255
    t.integer "width",  limit: 4
    t.integer "height", limit: 4
  end

  create_table "pics", force: :cascade do |t|
    t.string  "caption",  limit: 255
    t.integer "admin_id", limit: 4
    t.string  "image",    limit: 255
  end

  add_index "pics", ["admin_id"], name: "index_pics_on_admin_id", using: :btree

  create_table "pictrues", force: :cascade do |t|
    t.string "caption", limit: 255
  end

  create_table "projects", force: :cascade do |t|
    t.string   "customer",        limit: 255
    t.string   "location",        limit: 255
    t.string   "valueOfContract", limit: 255
    t.string   "duration",        limit: 255
    t.string   "scope",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "admin_id",        limit: 4
    t.string   "image",           limit: 255
  end

  add_index "projects", ["admin_id"], name: "index_projects_on_admin_id", using: :btree

end
