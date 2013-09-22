class AddDescriptionToLivros < ActiveRecord::Migration
  def change
    add_column :livros, :description, :string
  end
end
