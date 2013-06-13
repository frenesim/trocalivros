class Livro < ActiveRecord::Base
  attr_accessible :ano_escolaridade, :autore_id, :editora_id, :nome, :preco, :disciplina_id, :user_id, :photo1, :photo2, :photo3, :photo4

  has_attached_file :photo1, :styles => { :medium => "300x300>", :thumb => "50x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :photo2, :styles => { :medium => "300x300>", :thumb => "50x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :photo3, :styles => { :medium => "300x300>", :thumb => "50x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :photo4, :styles => { :medium => "300x300>", :thumb => "50x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :autore
  belongs_to :disciplina
  belongs_to :editora
  belongs_to :user

  def self.simple_search(search_text)
    where("nome LIKE ?", "%#{search_text}%") if search_text
  end

  def self.user_books(user_id)
    where(:user_id => user_id)
  end
end
