class Livro < ActiveRecord::Base
  attr_accessible :ano_escolaridade, :autor_id, :editora_id, :nome, :preco

  belongs_to :autore
  belongs_to :disciplina
  belongs_to :editora

  def self.simple_search(search_text)
    search_text ? where("nome LIKE ?", search_text) : where(1)
  end
end
