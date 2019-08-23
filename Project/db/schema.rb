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

ActiveRecord::Schema.define(version: 2019_08_15_114633) do

  create_table "clans", force: :cascade do |t|
    t.string "nome"
    t.integer "membri"
    t.integer "capoclan_id"
    t.text "status_clan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "roles_mask", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vittorie", default: 0
    t.integer "sconfitte", default: 0
    t.string "status"
    t.date "data_nascita"
    t.string "username"
    t.string "nome"
    t.string "cognome"
    t.integer "attacco", default: 5
    t.integer "difesa", default: 5
    t.integer "attaccospec", default: 1
    t.integer "difesaspec", default: 1
    t.integer "livello", default: 1
    t.string "img_profile"
    t.integer "clan"
    t.string "provider"
    t.string "uid"
    t.string "att", default: "Spada"
    t.string "def", default: "Scudo di ferro"
    t.string "arm", default: "Cotta di maglia"
    t.integer "ban_flag", default: 0
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
