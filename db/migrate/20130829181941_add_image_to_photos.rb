class AddImageToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :image_path, :string
  end
end
