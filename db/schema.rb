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

ActiveRecord::Schema.define(version: 20180226061125) do

  create_table "assessables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assessment_prompts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "assessable_id"
    t.integer "position"
    t.string "description"
    t.string "hint"
    t.string "assessable_type"
    t.string "answer_meta_data"
    t.string "data_source_url"
    t.string "data_source_name"
    t.string "creator_meta"
    t.string "dependency_meta"
    t.string "callback_meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_accesses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "score"
    t.integer "source_id"
    t.integer "assesment_prompt_id"
    t.integer "user_id"
    t.string "data_source_url"
    t.string "data_source_name"
    t.string "creator_meta"
    t.string "dependency_meta"
    t.string "callback_meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
