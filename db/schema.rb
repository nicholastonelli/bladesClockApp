# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_08_150436) do
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clocks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "sections"
    t.integer "marked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crews", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "type"
    t.integer "tier"
    t.string "hold"
    t.string "reputation"
    t.integer "rep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "scene"
    t.string "streets"
    t.string "buildings"
    t.integer "wealth"
    t.integer "security"
    t.integer "crime"
    t.integer "occult"
    t.string "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "tier"
    t.string "hold"
    t.string "turf"
    t.string "assets"
    t.string "quirks"
    t.string "situation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "playbook"
    t.string "heritage"
    t.string "background"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
