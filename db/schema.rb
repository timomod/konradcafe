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

ActiveRecord::Schema.define(version: 20161022224454) do

  create_table "covers", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "subtitle2"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curries", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "curry1"
    t.string   "curry2"
    t.string   "curry3"
    t.string   "curry4"
    t.string   "curry5"
    t.string   "date"
  end

  create_table "eats", force: :cascade do |t|
    t.string   "header"
    t.string   "subheader"
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "publish"
    t.string   "calendar_title"
    t.string   "calendar_body"
    t.string   "day"
    t.string   "month"
    t.string   "year"
    t.string   "start"
    t.string   "end"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "postcode"
    t.string   "city"
    t.string   "weekday"
  end

  create_table "homes", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
