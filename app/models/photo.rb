class Photo < ActiveRecord::Base
  attr_accessible :livro_id, :photo

  has_attached_file :photo,
                    :styles => { :medium => "300x300>", :thumb => "50x100>" },
                    :default_url => "/images/:style/missing.png"

  belongs_to :livro


  def to_jq_upload
    {
        "name" => read_attribute(:photo),
        "size" => photo.size,
        "url" => photo.url,
        "thumbnail_url" => photo.url(:thumb),
        "delete_url" => _destroy,
        "delete_type" => "DELETE"
    }
  end
end
