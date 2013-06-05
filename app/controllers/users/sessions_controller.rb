class Users::SessionsController < Devise::SessionsController

  def user_books
    user_id = current_user.id
    @livros = Livro.user_books(user_id)
  end

end
