class Photo < ActiveRecord::Base
  attr_accessible :livro_id
  attr_accessible :photo

  belongs_to :livro

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "50x100>" }, :default_url => "/images/:style/missing.png"

  def to_jq_upload
    {
        "name" => read_attribute(:photo_file_name),
        "size" => read_attribute(:photo_file_size),
        "url" => photo.url(:original),
        "thumbnail_url" => photo.url(:thumb),
        "delete_url" => photo.url,
        "delete_type" => "DELETE"
    }
  end
end
