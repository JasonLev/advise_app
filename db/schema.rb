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

ActiveRecord::Schema.define(:version => 20131025023141) do

  create_table "advisers", :force => true do |t|
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "adviser_since"
    t.string   "participation_level"
    t.integer  "adviser_meeting_count"
    t.integer  "user_id"
    t.string   "advice_industry"
  end

  add_index "advisers", ["user_id"], :name => "index_advisers_on_user_id"

  create_table "proteges", :force => true do |t|
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "desired_industry1"
    t.string   "desired_position1"
    t.string   "desired_industry2"
    t.string   "desired_position2"
    t.string   "desired_industry3"
    t.string   "desired_position3"
    t.integer  "protege_meeting_count"
    t.integer  "user_id"
  end

  add_index "proteges", ["user_id"], :name => "index_proteges_on_user_id"

  create_table "relationships", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "protege_id"
    t.integer  "adviser_id"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "name"
    t.string   "email"
    t.integer  "group_member_id"
    t.string   "picture"
    t.string   "industry"
    t.string   "current_position1"
    t.string   "current_position2"
    t.string   "current_position3"
    t.string   "past_position1"
    t.string   "past_position2"
    t.string   "past_position3"
    t.string   "linkedIn"
    t.string   "resume"
    t.string   "twitter"
    t.string   "git_hub"
    t.string   "website"
    t.string   "meeting_count"
    t.string   "remember_token"
    t.string   "password_digest"
  end

end
