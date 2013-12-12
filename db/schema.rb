# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131211203321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.string   "geography"
    t.integer  "total_pop_y2005"
    t.integer  "age_0_19_y2005"
    t.integer  "age_65_plus_y2005"
    t.integer  "per_capita_income_y2000"
    t.integer  "person_living_below_200pc_poverty_y2000"
    t.float    "pc_all_persons_living_below_200pc_poverty_level_y2000"
    t.float    "kotelchuck"
    t.float    "pc_c_section_deliveries_y2005_y2008"
    t.integer  "number_of_infant_deaths_y2005_y2008"
    t.integer  "infant_mortality_rate_y2005_y2008"
    t.float    "pc_low_birthweight_y2005_y2008"
    t.float    "pc_multiple_births_y2005_y2008"
    t.float    "pc_publicly_financed_pernatal_care_y2005_y2008"
    t.float    "pc_teen_births_y2005_y2008"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
