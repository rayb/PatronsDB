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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120722193823) do

  create_table "patrons", :force => true do |t|
    t.string   "last"
    t.string   "first"
    t.string   "title_organization"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.integer  "source_id"
    t.string   "ticket_notes"
    t.string   "notes"
    t.date     "start_date"
    t.date     "retired_date"
    t.boolean  "is_company"
    t.boolean  "is_industry"
    t.boolean  "is_press"
    t.boolean  "is_volunteer"
    t.boolean  "is_donor"
    t.boolean  "is_patron"
    t.string   "address_key"
    t.integer  "entry_user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
