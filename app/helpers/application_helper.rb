module ApplicationHelper
  def username
    current_user.name.empty? ? current_user.email : current_user.name
  end
  def set_admin_locale
    I18n.locale = :en
  end
end
