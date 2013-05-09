class FkUsersToLivros < ActiveRecord::Migration
  def change
    add_foreign_key(:livros, :users)
  end

end
