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

ActiveRecord::Schema.define(version: 2018_11_26_145140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "civilité"
    t.string "sap_code"
    t.string "raison_sociale"
    t.string "fonction"
    t.boolean "participation"
    t.string "email"
    t.integer "numero"
    t.string "transport"
    t.string "aller_depart"
    t.string "aller_arrivee"
    t.string "aller_numero_flight"
    t.string "aller_horaire_arrivee"
    t.string "retour_depart"
    t.string "retour_arrivee"
    t.string "retour_numero_flight"
    t.string "retour_horaire_depart"
    t.string "navette_bus"
    t.boolean "parking"
    t.string "parking_palce"
    t.boolean "herbergement"
    t.text "regime"
    t.text "observations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
