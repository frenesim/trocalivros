class Photo < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  attr_accessible :livro_id, :image_path
  belongs_to :livro
  mount_uploader :image_path, AssetUploader


  def to_jq_upload
    {
        "name" => read_attribute(:image_path),
        "size" => image_path.size,
        "url" => image_path.url,
        "thumbnail_url" => image_path.thumb.url,
        "delete_url" => photo_path(:id => id),
        "delete_type" => "DELETE"
    }
  end

end
