class Livro < ActiveRecord::Base
  attr_accessible :ano_escolaridade, :autore_id, :editora_id, :nome, :preco, :disciplina_id, :user_id, :photo1, :photo2, :photo3, :photo4

  has_attached_file :photo1, :styles => { :medium => "300x300>", :thumb => "50x100>" }, :default_url => "/images/:style/missing.png"

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

  def to_jq_upload
    {
        "name" => read_attribute(:photo1),
        "size" => photo1.size,
        "url" => photo1.url,
        "thumbnail_url" => photo1.thumb.url,
        "delete_url" => picture_path(:id => id),
        "delete_type" => "DELETE"
    }
  end
end
