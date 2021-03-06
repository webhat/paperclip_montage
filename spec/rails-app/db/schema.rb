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

ActiveRecord::Schema.define(version: 20141214193102) do

  create_table "avatars", force: true do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avatars_meta", force: true do |t|
    t.integer  "meta_id"
    t.integer  "avatar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avatars_meta", ["avatar_id"], name: "index_avatars_meta_on_avatar_id"
  add_index "avatars_meta", ["meta_id"], name: "index_avatars_meta_on_meta_id"

  create_table "meta", force: true do |t|
    t.string   "montage_file_name"
    t.string   "montage_content_type"
    t.integer  "montage_file_size"
    t.datetime "montage_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
