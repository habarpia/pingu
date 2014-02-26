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

ActiveRecord::Schema.define(version: 20140226055702) do

  create_table "penguins", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "personality"
    t.string   "colour_mum"
    t.string   "colour_dad"
    t.string   "colour_own"
    t.string   "belly_colour_mum"
    t.string   "belly_colour_dad"
    t.string   "belly_colour_own"
    t.integer  "beak_mum"
    t.integer  "beak_dad"
    t.integer  "beak_own"
    t.integer  "eyes_mum"
    t.integer  "eyes_dad"
    t.integer  "eyes_own"
    t.integer  "belly_mum"
    t.integer  "belly_dad"
    t.integer  "belly_own"
    t.integer  "body_mum"
    t.integer  "body_dad"
    t.integer  "body_own"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
