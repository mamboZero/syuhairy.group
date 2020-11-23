# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_23_161744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "cert_num"
    t.string "email"
    t.string "ic_num"
    t.text "mailing_address_1"
    t.text "mailing_address_2"
    t.text "employee_address_1"
    t.text "employee_address_2"
    t.string "race"
    t.string "religion"
    t.string "marital_status"
    t.string "profession"
    t.string "pdf_agent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "contribution"
    t.string "doc"
  end

  create_table "dependents", force: :cascade do |t|
    t.string "name"
    t.string "ic_num"
    t.text "mail_add_1"
    t.text "mail_add_2"
    t.string "race"
    t.string "religion"
    t.string "marital_status"
    t.string "profession"
    t.string "height"
    t.string "weight"
    t.string "phone_number"
    t.string "contribution_value"
    t.bigint "agent_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agent_id"], name: "index_dependents_on_agent_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "agent_id"
    t.index ["agent_id"], name: "index_plans_on_agent_id"
  end

  create_table "spouses", force: :cascade do |t|
    t.string "status"
    t.string "email"
    t.string "name"
    t.string "ic_num"
    t.text "mail_add_1"
    t.text "mail_add_2"
    t.string "race"
    t.string "religion"
    t.string "marital_status"
    t.string "profession"
    t.string "height"
    t.string "weight"
    t.string "hp_number"
    t.string "gross_income"
    t.string "employee_phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "agent_id"
    t.index ["agent_id"], name: "index_spouses_on_agent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dependents", "agents"
  add_foreign_key "plans", "agents"
  add_foreign_key "spouses", "agents"
end
