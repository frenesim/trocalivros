module ApplicationHelper
  def username
    current_user.name ? current_user.name : current_user.email
  end
  def set_admin_locale
    I18n.locale = :en
  end
end
