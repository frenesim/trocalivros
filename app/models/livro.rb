class Livro < ActiveRecord::Base
  attr_accessible :ano_escolaridade, :autore_id, :editora_id, :nome, :preco, :disciplina_id

  belongs_to :autore
  belongs_to :disciplina
  belongs_to :editora

end
