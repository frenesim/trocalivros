class Livro < ActiveRecord::Base
  attr_accessible :ano_escolaridade, :autore_id, :editora_id, :nome, :preco, :disciplina_id, :user_id, :photos_attributes

  belongs_to :autore
  belongs_to :disciplina
  belongs_to :editora
  belongs_to :user

  has_many :photos

  validates_presence_of :nome, :ano_escolaridade, :autore_id, :preco, :disciplina_id, :user_id

  accepts_nested_attributes_for :photos

  def self.simple_search(search_text)
    where("nome LIKE ?", "%#{search_text}%") if search_text
  end

  def self.user_books(user_id)
    where(:user_id => user_id)
  end
end
