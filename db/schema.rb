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

ActiveRecord::Schema.define(version: 2020_06_28_071030) do

  create_table "styilings", force: :cascade do |t|
    t.integer "user_id"
    t.string "styling_image_id"
    t.text "detail"
    t.string "item_one"
    t.string "item_two"
    t.string "item_three"
    t.string "item_four"
    t.string "item_five"
    t.string "item_six"
    t.string "item_seven"
    t.string "item_eight"
    t.string "brand_one"
    t.string "brand_two"
    t.string "brand_three"
    t.string "brand_four"
    t.string "brand_five"
    t.string "brand_six"
    t.string "brand_seven"
    t.string "brand_eight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "gender"
    t.string "height"
    t.string "image_id"
    t.string "favorite_brand"
    t.text "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_active", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end