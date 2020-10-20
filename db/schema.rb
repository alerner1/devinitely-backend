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

ActiveRecord::Schema.define(version: 2020_10_20_211004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checklists", force: :cascade do |t|
    t.bigint "job_lead_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "task_list"
    t.index ["job_lead_id"], name: "index_checklists_on_job_lead_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "job_lead_id", null: false
    t.string "name"
    t.string "title"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_lead_id"], name: "index_contacts_on_job_lead_id"
  end

  create_table "job_leads", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "company"
    t.string "link"
    t.date "date"
    t.string "contact_method"
    t.string "referral"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_job_leads_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "job_lead_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_lead_id"], name: "index_notes_on_job_lead_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "activities"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "checklists", "job_leads"
  add_foreign_key "contacts", "job_leads"
  add_foreign_key "job_leads", "users"
  add_foreign_key "notes", "job_leads"
end
