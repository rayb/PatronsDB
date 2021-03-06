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

ActiveRecord::Schema.define(:version => 20120721204317) do

  create_table "activities", :force => true do |t|
    t.integer "role_id"
    t.integer "patron_id"
    t.integer "play_id"
    t.integer "performance_id"
    t.decimal "hours"
    t.date    "start_date"
    t.date    "end_date"
    t.string  "notes"
    t.integer "entry_user_id"
  end

  create_table "donations", :force => true do |t|
    t.string   "patron_id"
    t.date     "date"
    t.decimal  "amount"
    t.integer  "promotion_id"
    t.string   "notes"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "entry_user_id"
  end

  create_table "patrons", :force => true do |t|
    t.string   "last"
    t.string   "first"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.integer  "source_id"
    t.string   "address_key"
    t.string   "ticket_notes"
    t.date     "start_date"
    t.date     "retiring_date"
    t.boolean  "is_cast"
    t.boolean  "is_industry"
    t.boolean  "is_press"
    t.boolean  "is_patron"
    t.string   "notes"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "organization"
    t.integer  "entry_user_id"
  end

  create_table "performances", :force => true do |t|
    t.string   "play_id"
    t.datetime "start_date_time"
    t.string   "type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "entry_user_id"
  end

  create_table "plays", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "performances"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "entry_user_id"
  end

  create_table "promotion_patrons", :force => true do |t|
    t.integer "promotion_id"
    t.integer "patron_id"
  end

  create_table "promotion_types", :force => true do |t|
    t.string  "name"
    t.integer "entry_user_id"
  end

  create_table "promotions", :force => true do |t|
    t.string   "name"
    t.date     "start_date"
    t.string   "play_id"
    t.string   "performance_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "promotion_type_id"
    t.integer  "entry_user_id"
  end

  create_table "purchases", :force => true do |t|
    t.integer  "ticket_number"
    t.datetime "order_date"
    t.datetime "start_date_time"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "organization"
    t.string   "phone"
    t.string   "email"
    t.string   "admission"
    t.decimal  "price"
    t.integer  "count"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "performance_id"
    t.integer  "patron_id"
    t.integer  "entry_user_id"
  end

  create_table "raffles", :force => true do |t|
    t.string   "play_id"
    t.string   "performance_id"
    t.string   "patron_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "entry_user_id"
  end

  create_table "roles", :force => true do |t|
    t.string  "name"
    t.integer "entry_user_id"
  end

  create_table "sources", :force => true do |t|
    t.date     "start_date"
    t.string   "name"
    t.string   "notes"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "entry_user_id"
  end

  create_table "users", :force => true do |t|
    t.string  "login"
    t.integer "patron_id"
    t.string  "password_digest"
    t.integer "roles_mask"
    t.integer "display_order"
    t.date    "retired_date"
    t.string  "email"
    t.integer "entry_user_id"
  end

end
