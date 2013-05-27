class Livro < ActiveRecord::Base
  attr_accessible :ano_escolaridade, :autore_id, :editora_id, :nome, :preco, :disciplina_id, :user_id, :photo1

  has_attached_file :photo1, :styles => { :medium => "300x300>", :thumb => "50x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :autore
  belongs_to :disciplina
  belongs_to :editora
  belongs_to :user

  scope :sim_search, lambda { |search| where("nome LIKE ?", "%#{search}%")}

  def self.simple_search(search_text)
    where("nome LIKE ?", "%#{search_text}%") if search_text
  end
end
