class AddUserIdToLivros < ActiveRecord::Migration
  def change
    add_column :livros, :user_id, :integer
  end
end
