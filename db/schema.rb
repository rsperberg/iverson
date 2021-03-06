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

ActiveRecord::Schema.define(version: 20140416200110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "games", force: true do |t|
    t.integer  "ko_game_id"
    t.integer  "score"
    t.boolean  "is_home"
    t.text     "summary"
    t.string   "video_url"
    t.string   "date"
    t.integer  "team_id"
    t.integer  "opponent_score"
    t.integer  "opponent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.hstore   "boxscore"
    t.hstore   "opponent_boxscore"
    t.string   "opponent_name"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.integer  "ko_school_id"
    t.string   "logo_url"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.integer  "school_id"
    t.integer  "ko_team_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
