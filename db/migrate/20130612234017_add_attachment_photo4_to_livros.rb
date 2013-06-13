class AddAttachmentPhoto4ToLivros < ActiveRecord::Migration
  def self.up
    change_table :livros do |t|
      t.attachment :photo4
    end
  end

  def self.down
    drop_attached_file :livros, :photo4
  end
end
