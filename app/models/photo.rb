class Photo < ActiveRecord::Base
  attr_accessible :livro_id, :image_path
  belongs_to :livro
  mount_uploader :image_path, AssetUploader


  def to_jq_upload
    {
        "name" => read_attribute(:asset),
        "size" => asset.size,
        "url" => asset.url,
        "thumbnail_url" => asset.thumb.url,
        "delete_url" => photo_path(:id => id),
        "delete_type" => "DELETE"
    }
  end
end
