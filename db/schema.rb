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

ActiveRecord::Schema.define(version: 20170330005001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jogos", force: :cascade do |t|
    t.string   "titulo"
    t.string   "genero"
    t.string   "desenvolvedora"
    t.integer  "ano"
    t.string   "plataforma"
    t.float    "preco"
    t.integer  "qtdEstoque"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "foto"
  end

  create_table "vendas", force: :cascade do |t|
    t.date     "dataVenda"
    t.float    "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "cliente_id"
    t.integer  "jogo_id"
    t.integer  "funcionario_id"
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id", using: :btree
    t.index ["funcionario_id"], name: "index_vendas_on_funcionario_id", using: :btree
    t.index ["jogo_id"], name: "index_vendas_on_jogo_id", using: :btree
  end

  add_foreign_key "vendas", "clientes"
  add_foreign_key "vendas", "funcionarios"
  add_foreign_key "vendas", "jogos"
end
