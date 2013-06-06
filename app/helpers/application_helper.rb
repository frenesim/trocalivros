module ApplicationHelper
  def username
    current_user.name ? current_user.name : current_user.email
  end
end
