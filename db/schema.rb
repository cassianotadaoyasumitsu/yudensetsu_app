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

ActiveRecord::Schema.define(version: 2021_01_01_112147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "carpuntos", force: :cascade do |t|
    t.string "driver"
    t.string "start"
    t.string "end"
    t.boolean "oil"
    t.datetime "oiltime"
    t.boolean "fuel"
    t.datetime "fueltime"
    t.bigint "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_carpuntos_on_car_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "car_name"
    t.string "car_plate"
    t.string "car_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "furigana"
    t.string "ceo"
    t.string "address"
    t.string "address2"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "contact"
    t.string "closure"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genbas", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "contact"
    t.string "closure"
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_genbas_on_company_id"
  end

  create_table "puntos", force: :cascade do |t|
    t.datetime "date"
    t.datetime "in"
    t.datetime "out"
    t.text "note"
    t.boolean "day"
    t.boolean "night"
    t.boolean "day_off"
    t.bigint "user_id", null: false
    t.bigint "genba_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "period"
    t.index ["genba_id"], name: "index_puntos_on_genba_id"
    t.index ["user_id"], name: "index_puntos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "admin", default: false
    t.string "name"
    t.string "furigana"
    t.string "address"
    t.string "phone"
    t.string "role"
    t.integer "level_employee"
    t.string "job_exp"
    t.string "pay_number"
    t.date "started_date"
    t.boolean "license1", default: false
    t.boolean "license2", default: false
    t.boolean "license3", default: false
    t.boolean "license4", default: false
    t.boolean "license5", default: false
    t.boolean "license6", default: false
    t.boolean "license7", default: false
    t.boolean "license8", default: false
    t.boolean "license9", default: false
    t.boolean "license10", default: false
    t.boolean "license11", default: false
    t.boolean "license12", default: false
    t.boolean "license13", default: false
    t.boolean "license14", default: false
    t.boolean "license15", default: false
    t.boolean "license16", default: false
    t.boolean "license17", default: false
    t.boolean "license18", default: false
    t.boolean "license19", default: false
    t.boolean "license20", default: false
    t.boolean "license21", default: false
    t.boolean "license22", default: false
    t.boolean "license23", default: false
    t.boolean "license24", default: false
    t.boolean "license25", default: false
    t.date "healthy_exam"
    t.date "drive_license"
    t.string "document"
    t.date "document_date"
    t.string "passport"
    t.date "passport_date"
    t.boolean "active", default: true
    t.boolean "weekend", default: false
    t.boolean "night_shift", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "carpuntos", "cars"
  add_foreign_key "genbas", "companies"
  add_foreign_key "puntos", "genbas"
  add_foreign_key "puntos", "users"
end
