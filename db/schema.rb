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

ActiveRecord::Schema.define(version: 20180916150450) do

  create_table "game_infos", force: :cascade do |t|
    t.date "date"
    t.string "batting_first_team"
    t.string "field_first_team"
    t.string "stadium"
    t.integer "game_number"
    t.string "event"
    t.string "round"
    t.integer "top1"
    t.integer "bottom1"
    t.integer "top2"
    t.integer "bottom2"
    t.integer "top3"
    t.integer "bottom3"
    t.integer "top4"
    t.integer "bottom4"
    t.integer "top5"
    t.integer "bottom5"
    t.integer "top6"
    t.integer "bottom6"
    t.integer "top7"
    t.integer "bottom7"
    t.integer "top8"
    t.integer "bottom8"
    t.integer "top9"
    t.integer "bottom9"
    t.integer "top10"
    t.integer "bottom10"
    t.integer "top11"
    t.integer "bottom11"
    t.integer "top12"
    t.integer "bottom12"
    t.integer "top13"
    t.integer "bottom13"
    t.integer "top14"
    t.integer "bottom14"
    t.integer "top15"
    t.integer "bottom15"
    t.boolean "updatable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pitcher_top"
    t.string "pitcher_bottom"
    t.string "catcher_top"
    t.string "catcher_bottom"
    t.string "homerun_top"
    t.string "homerun_bottom"
    t.string "threebase_top"
    t.string "threebase_bottom"
    t.string "twobase_top"
    t.string "twobase_bottom"
    t.string "message"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
