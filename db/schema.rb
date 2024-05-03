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

ActiveRecord::Schema[7.0].define(version: 2024_05_02_222303) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "condemns", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "monk_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monk_id"], name: "index_condemns_on_monk_id"
    t.index ["post_id"], name: "index_condemns_on_post_id"
  end

  create_table "monks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "monk_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monk_id"], name: "index_posts_on_monk_id"
  end

  create_table "sanctifies", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "monk_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monk_id"], name: "index_sanctifies_on_monk_id"
    t.index ["post_id"], name: "index_sanctifies_on_post_id"
  end

  create_table "transcribes", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "monk_id", null: false
    t.string "marginalia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monk_id"], name: "index_transcribes_on_monk_id"
    t.index ["post_id"], name: "index_transcribes_on_post_id"
  end

  add_foreign_key "condemns", "monks"
  add_foreign_key "condemns", "posts"
  add_foreign_key "posts", "monks"
  add_foreign_key "sanctifies", "monks"
  add_foreign_key "sanctifies", "posts"
  add_foreign_key "transcribes", "monks"
  add_foreign_key "transcribes", "posts"
end
