class AddAttachmentPhoto3ToLivros < ActiveRecord::Migration
  def self.up
    change_table :livros do |t|
      t.attachment :photo3
    end
  end

  def self.down
    drop_attached_file :livros, :photo3
  end
end
