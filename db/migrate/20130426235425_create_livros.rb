class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome
      t.integer :editora_id
      t.integer :ano_escolaridade
      t.integer :autor_id
      t.integer :preco

      t.timestamps
    end
  end
end
