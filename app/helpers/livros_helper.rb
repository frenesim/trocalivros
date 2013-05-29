module LivrosHelper
  def owner_link(livro)
    link_to t('helpers.links.edit', :default => t("helpers.links.details")), edit_livro_path(livro), :class => 'btn btn-link' if current_user.id == livro.user_id
  end
end
