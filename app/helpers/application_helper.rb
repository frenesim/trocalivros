module ApplicationHelper
  def username
    if current_user.name.nil? || current_user.name.empty?
      current_user.email
    else
      current_user.name
    end
  end
end
