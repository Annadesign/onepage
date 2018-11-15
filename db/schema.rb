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

ActiveRecord::Schema.define(version: 20181115204834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "content"
    t.string "link"
    t.string "image"
    t.boolean "ispublished"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "template"
    t.string "justification"
    t.index ["section_id"], name: "index_articles_on_section_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "telephone"
    t.text "description"
    t.string "image"
    t.boolean "ispublished"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_contacts_on_section_id"
  end

  create_table "faqs", force: :cascade do |t|
    t.string "question"
    t.text "answer"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_faqs_on_section_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.string "image"
    t.string "ispublished"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_homes_on_section_id"
  end

  create_table "moderators", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "logo"
    t.boolean "ispublished"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_partners_on_section_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "content"
    t.string "image"
    t.boolean "ispublished"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id"
    t.index ["section_id"], name: "index_projects_on_section_id"
    t.index ["service_id"], name: "index_projects_on_service_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "position"
    t.boolean "ispublished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "icon"
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_services_on_section_id"
  end

  add_foreign_key "articles", "sections"
  add_foreign_key "contacts", "sections"
  add_foreign_key "faqs", "sections"
  add_foreign_key "homes", "sections"
  add_foreign_key "partners", "sections"
  add_foreign_key "projects", "sections"
  add_foreign_key "projects", "services"
  add_foreign_key "services", "sections"
end
