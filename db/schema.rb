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

ActiveRecord::Schema[7.0].define(version: 2023_07_25_062124) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "line1"
    t.string "line2"
    t.string "city"
    t.string "country"
    t.string "state"
    t.string "zipcode"
    t.string "addressable_type", null: false
    t.bigint "addressable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  create_table "bank_details", force: :cascade do |t|
    t.string "bank_name"
    t.integer "account_number"
    t.integer "ifsc_code"
    t.string "accountable_type", null: false
    t.bigint "accountable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_type", "accountable_id"], name: "index_bank_details_on_accountable"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.string "name"
    t.string "authority"
    t.date "issue_date"
    t.bigint "freelancer_user_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freelancer_user_profile_id"], name: "index_certifications_on_freelancer_user_profile_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "college"
    t.string "degree"
    t.string "field_of_study"
    t.date "start_date"
    t.date "end_date"
    t.string "description"
    t.bigint "freelancer_user_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freelancer_user_profile_id"], name: "index_educations_on_freelancer_user_profile_id"
  end

  create_table "freelancer_exeperiences", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.string "type"
    t.string "location"
    t.date "start_date"
    t.date "end_date"
    t.boolean "present"
    t.bigint "freelancer_user_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freelancer_user_profile_id"], name: "index_freelancer_exeperiences_on_freelancer_user_profile_id"
  end

  create_table "freelancer_user_profiles", force: :cascade do |t|
    t.string "availability"
    t.text "bio"
    t.integer "hourly_rate"
    t.string "goal"
    t.string "exeperience_level"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_freelancer_user_profiles_on_user_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "language_name"
    t.string "proficiency_level"
    t.bigint "freelancer_user_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freelancer_user_profile_id"], name: "index_languages_on_freelancer_user_profile_id"
  end

  create_table "projects", force: :cascade do |t|
    t.text "description"
    t.string "title"
    t.string "technology"
    t.bigint "freelancer_user_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freelancer_user_profile_id"], name: "index_projects_on_freelancer_user_profile_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id", null: false
    t.bigint "freelancer_user_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_services_on_category_id"
    t.index ["freelancer_user_profile_id"], name: "index_services_on_freelancer_user_profile_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "skillable_type", null: false
    t.bigint "skillable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skillable_type", "skillable_id"], name: "index_skills_on_skillable"
  end

  create_table "social_account_links", force: :cascade do |t|
    t.string "account_name"
    t.string "link"
    t.bigint "freelancer_user_profile_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freelancer_user_profile_id"], name: "index_social_account_links_on_freelancer_user_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name"
    t.string "role"
    t.string "mobile_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "certifications", "freelancer_user_profiles"
  add_foreign_key "educations", "freelancer_user_profiles"
  add_foreign_key "freelancer_exeperiences", "freelancer_user_profiles"
  add_foreign_key "freelancer_user_profiles", "users"
  add_foreign_key "languages", "freelancer_user_profiles"
  add_foreign_key "projects", "freelancer_user_profiles"
  add_foreign_key "services", "categories"
  add_foreign_key "services", "freelancer_user_profiles"
  add_foreign_key "social_account_links", "freelancer_user_profiles"
end
