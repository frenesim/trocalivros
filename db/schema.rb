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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130430223200) do

  create_table "autores", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "editoras", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "livros", :force => true do |t|
    t.string   "nome"
    t.integer  "editora_id"
    t.integer  "ano_escolaridade"
    t.integer  "autore_id"
    t.integer  "preco"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "disciplina_id"
  end

  add_index "livros", ["autore_id"], :name => "livros_autore_id_fk"
  add_index "livros", ["disciplina_id"], :name => "livros_disciplina_id_fk"
  add_index "livros", ["editora_id"], :name => "livros_editora_id_fk"

  add_foreign_key "livros", "autores", :name => "livros_autore_id_fk"
  add_foreign_key "livros", "disciplinas", :name => "livros_disciplina_id_fk"
  add_foreign_key "livros", "editoras", :name => "livros_editora_id_fk"

end
