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

ActiveRecord::Schema.define(version: 20160924180353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.integer  "article_type_id"
    t.string   "name"
    t.integer  "manufacturer_id"
    t.integer  "units_id"
    t.integer  "period_save_id"
    t.integer  "technical_features_id"
    t.integer  "country_id"
    t.string   "description"
    t.decimal  "price_per_unit",        precision: 10, scale: 2
    t.float    "volume_netto"
    t.float    "volume_brutto"
    t.float    "weight_netto"
    t.float    "weight_brutto"
    t.float    "height"
    t.float    "width"
    t.integer  "color_id"
    t.boolean  "fragile"
    t.boolean  "radioactive"
    t.boolean  "toxic"
    t.integer  "packing_type_id"
    t.integer  "transport_id"
    t.integer  "analogues_id"
    t.integer  "special_features_id"
    t.integer  "special_conditions_id"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["analogues_id"], name: "index_articles_on_analogues_id", using: :btree
    t.index ["article_type_id"], name: "index_articles_on_article_type_id", using: :btree
    t.index ["color_id"], name: "index_articles_on_color_id", using: :btree
    t.index ["country_id"], name: "index_articles_on_country_id", using: :btree
    t.index ["manufacturer_id"], name: "index_articles_on_manufacturer_id", using: :btree
    t.index ["packing_type_id"], name: "index_articles_on_packing_type_id", using: :btree
    t.index ["period_save_id"], name: "index_articles_on_period_save_id", using: :btree
    t.index ["special_conditions_id"], name: "index_articles_on_special_conditions_id", using: :btree
    t.index ["special_features_id"], name: "index_articles_on_special_features_id", using: :btree
    t.index ["technical_features_id"], name: "index_articles_on_technical_features_id", using: :btree
    t.index ["transport_id"], name: "index_articles_on_transport_id", using: :btree
    t.index ["units_id"], name: "index_articles_on_units_id", using: :btree
  end

end
