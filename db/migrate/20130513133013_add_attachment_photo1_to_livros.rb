class AddAttachmentPhoto1ToLivros < ActiveRecord::Migration
  def self.up
    change_table :livros do |t|
      t.attachment :photo1
    end
  end

  def self.down
    drop_attached_file :livros, :photo1
  end
end
