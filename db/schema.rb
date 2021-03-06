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

ActiveRecord::Schema.define(version: 20160101154848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_keys", force: :cascade do |t|
    t.string   "name"
    t.string   "key"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estadisticas", force: :cascade do |t|
    t.float    "velocidad",                      array: true
    t.float    "tiempoVelocidad",                array: true
    t.float    "velocidadMedia"
    t.float    "velocidadMaxima"
    t.float    "velocidadMinima"
    t.text     "ruta"
    t.float    "cambiosVelocidad",               array: true
    t.integer  "cambiosRpm",                     array: true
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "tiempoCarril"
    t.integer  "tiempoFueraCarril"
    t.integer  "alumno_id"
  end

  add_index "estadisticas", ["alumno_id"], name: "index_estadisticas_on_alumno_id", using: :btree

  create_table "mapas", force: :cascade do |t|
    t.text     "mapa"
    t.boolean  "currentMap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "estadisticas", "alumnos"
end
