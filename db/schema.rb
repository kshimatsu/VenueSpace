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

ActiveRecord::Schema.define(version: 20141022105910) do

  create_table "venues", force: true do |t|
    t.string   "name"
    t.integer  "phone_number"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "email"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.float    "space"
    t.float    "capacity"
    t.float    "available_parking"
    t.integer  "changing_rooms"
    t.integer  "restrooms"
    t.integer  "electric_outlets"
    t.boolean  "indoors"
    t.boolean  "outdoors"
    t.boolean  "handicap"
    t.boolean  "coordinator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
