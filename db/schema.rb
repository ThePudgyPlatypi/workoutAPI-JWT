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

ActiveRecord::Schema.define(version: 20171115033000) do

  create_table "concentration_exercises", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "concentration_id"
    t.bigint "exercise_id"
    t.index ["concentration_id"], name: "index_concentration_exercises_on_concentration_id"
    t.index ["exercise_id"], name: "index_concentration_exercises_on_exercise_id"
  end

  create_table "concentrations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "equipment_cat_id"
    t.index ["equipment_cat_id"], name: "index_equipment_on_equipment_cat_id"
  end

  create_table "equipment_cats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_exercises", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "exercise_id"
    t.bigint "equipment_id"
    t.index ["equipment_id"], name: "index_equipment_exercises_on_equipment_id"
    t.index ["exercise_id"], name: "index_equipment_exercises_on_exercise_id"
  end

  create_table "exercises", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_equipments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "equipment_id"
    t.index ["equipment_id"], name: "index_user_equipments_on_equipment_id"
    t.index ["user_id"], name: "index_user_equipments_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "concentration_exercises", "concentrations"
  add_foreign_key "concentration_exercises", "exercises"
  add_foreign_key "equipment", "equipment_cats"
  add_foreign_key "equipment_exercises", "equipment"
  add_foreign_key "equipment_exercises", "exercises"
  add_foreign_key "user_equipments", "equipment"
  add_foreign_key "user_equipments", "users"
end
