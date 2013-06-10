module ApplicationHelper
  def username
    current_user.name.empty? ? current_user.email : current_user.name
  end

end
