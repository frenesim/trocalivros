class AddDisciplinaIdToLivros < ActiveRecord::Migration
  def change
    add_column :livros, :disciplina_id, :integer
  end
end
