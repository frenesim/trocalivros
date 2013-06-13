class AddAttachmentPhoto2ToLivros < ActiveRecord::Migration
  def self.up
    change_table :livros do |t|
      t.attachment :photo2
    end
  end

  def self.down
    drop_attached_file :livros, :photo2
  end
end
