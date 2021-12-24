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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ZBOOKMARK", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.string "ZSTATUS"
    t.string "ZTITLE"
    t.string "ZUID"
    t.string "ZURL"
  end

  create_table "ZBROWSERSEARCH", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.datetime "ZCREATED"
    t.string "ZTITLE"
    t.string "ZURL"
  end

  create_table "ZGROCERYAISLE", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.string "ZNAME"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZGROCERYINGREDIENT", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZISSYNCED"
    t.integer "ZAISLE"
    t.string "ZNAME"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZGROCERYITEM", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.integer "ZPURCHASED"
    t.integer "ZSEPARATE"
    t.integer "ZAISLE"
    t.integer "ZLIST"
    t.string "ZAISLENAME"
    t.string "ZINGREDIENT"
    t.string "ZINSTRUCTION"
    t.string "ZNAME"
    t.string "ZQUANTITY"
    t.string "ZRECIPENAME"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZGROCERYLIST", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZISDEFAULT"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.string "ZNAME"
    t.string "ZREMINDERSLIST"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZMEAL", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.integer "ZORIGINALTYPE"
    t.integer "ZRECIPE"
    t.integer "ZTYPE"
    t.datetime "ZDATE"
    t.string "ZNAME"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZMEALTYPE", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZEXPORTALLDAY"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.integer "ZORIGINALTYPE"
    t.float "ZEXPORTTIME"
    t.datetime "ZLASTUSED"
    t.string "ZCOLOR"
    t.string "ZNAME"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZMENU", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZDAYS"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.string "ZNAME"
    t.string "ZNOTES"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZMENUITEM", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZDAY"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.integer "ZMENU"
    t.integer "ZRECIPE"
    t.integer "ZTYPE"
    t.string "ZNAME"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZPANTRYITEM", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZHASEXPIRATION"
    t.integer "ZINSTOCK"
    t.integer "ZISSYNCED"
    t.integer "ZAISLE"
    t.datetime "ZEXPIRATIONDATE"
    t.datetime "ZPURCHASEDATE"
    t.string "ZAISLENAME"
    t.string "ZINGREDIENT"
    t.string "ZQUANTITY"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZRECIPE", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZINTRASH"
    t.integer "ZISPINNED"
    t.integer "ZISSYNCED"
    t.integer "ZONFAVORITES"
    t.integer "ZPHOTOISDOWNLOADED"
    t.integer "ZPHOTOISUPLOADED"
    t.integer "ZRATING"
    t.datetime "ZCREATED"
    t.string "ZCOOKTIME"
    t.string "ZDESCRIPTIONTEXT"
    t.string "ZDIFFICULTY"
    t.string "ZDIRECTIONS"
    t.string "ZIMAGEURL"
    t.string "ZINGREDIENTS"
    t.string "ZNAME"
    t.string "ZNOTES"
    t.string "ZNUTRITIONALINFO"
    t.string "ZPHOTO"
    t.string "ZPHOTOHASH"
    t.string "ZPHOTOLARGE"
    t.string "ZPREPTIME"
    t.string "ZSCALE"
    t.string "ZSELECTEDDIRECTION"
    t.string "ZSELECTEDINGREDIENTS"
    t.string "ZSERVINGS"
    t.string "ZSOURCE"
    t.string "ZSOURCEURL"
    t.string "ZSTATUS"
    t.string "ZSYNCHASH"
    t.string "ZTOTALTIME"
    t.string "ZUID"
  end

  create_table "ZRECIPECATEGORY", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZISSYNCED"
    t.integer "ZORDERFLAG"
    t.integer "ZPARENT"
    t.string "ZNAME"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZRECIPEPHOTO", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZISDOWNLOADERRORED"
    t.integer "ZISDOWNLOADED"
    t.integer "ZISPENDINGDELETION"
    t.integer "ZISSYNCED"
    t.integer "ZISUPLOADED"
    t.integer "ZORDERFLAG"
    t.integer "ZRECIPE"
    t.string "ZDOWNLOADERRORMESSAGE"
    t.string "ZFILENAME"
    t.string "ZNAME"
    t.string "ZPHOTOHASH"
    t.string "ZRECIPEUID"
    t.string "ZSTATUS"
    t.string "ZUID"
  end

  create_table "ZSYNCSTATUS", primary_key: "Z_PK", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZREVISION"
    t.string "ZNAME"
  end

  create_table "Z_12CATEGORIES", primary_key: ["Z_12RECIPES", "Z_13CATEGORIES"], force: :cascade do |t|
    t.integer "Z_12RECIPES", null: false
    t.integer "Z_13CATEGORIES", null: false
  end

  create_table "Z_PRIMARYKEY", primary_key: "Z_ENT", id: :integer, default: nil, force: :cascade do |t|
    t.string "Z_NAME"
    t.integer "Z_SUPER"
    t.integer "Z_MAX"
  end

end
