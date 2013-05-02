class Livro < ActiveRecord::Base
  attr_accessible :ano_escolaridade, :autore_id, :editora_id, :nome, :preco, :disciplina_id

  belongs_to :autore
  belongs_to :disciplina
  belongs_to :editora


  scope :search, lambda { |search| where("nome LIKE ?", "%#{search}%")}

  def self.simple_search(search_text)
    search_text ? where("nome LIKE ?", "%#{search_text}%") : where(1)
  end
end
