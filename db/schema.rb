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

ActiveRecord::Schema[7.0].define(version: 2023_03_08_015359) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dentista", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "telefone"
    t.string "especialidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horario_de_atendimentos", force: :cascade do |t|
    t.string "dia_da_semana"
    t.time "horario_inicio"
    t.time "horario_termino"
    t.integer "dentista_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dentista_id"], name: "index_horario_de_atendimentos_on_dentista_id"
  end

  add_foreign_key "horario_de_atendimentos", "dentista", column: "dentista_id"
end
