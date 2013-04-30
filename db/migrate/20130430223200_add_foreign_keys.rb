class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key "livros", "disciplinas"
    add_foreign_key "livros", "autores"
    add_foreign_key "livros", "editoras"
  end
end
