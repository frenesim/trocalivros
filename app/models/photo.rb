class Photo < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  attr_accessible :livro_id, :image
  belongs_to :livro
  belongs_to :user, through: :livro
  mount_uploader :image, AssetUploader


  def to_jq_upload
    {
        "name" => read_attribute(:image),
        "size" => image.size,
        "url" => image.url,
        "thumbnail_url" => image.thumb.url,
        "delete_url" => photo_path(:id => id),
        "delete_type" => "DELETE"
    }
  end

  def scoped_by_user
    where(user_id: current_user)
  end

end
