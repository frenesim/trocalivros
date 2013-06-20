module ApplicationHelper
  def username
    if current_user.name.nil? || current_user.name.empty?
      current_user.email
    else
      current_user.name
    end
  end

  def tr_class_chooser(action)
    action == 'user_books' ? '%tr' : "%tr.link{:data => {:link=>livro_path(livro)}}"
  end

end
