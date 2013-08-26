class CreateBookPhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :livro_id
      t.attachment :photo
      t.timestamps
    end
  end
end
