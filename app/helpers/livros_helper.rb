module LivrosHelper
  def owner_link(livro)
    link_to t('helpers.links.edit', :default => t("helpers.links.details")), edit_livro_path(livro), :class => 'btn btn-link' if current_user && current_user.id == livro.user_id
  end

  def redirect_back
    session.delete(:return_to)
  end

  def main_photo_thumb(livro)
    unless livro.photos.empty?
      return image_tag Photo.find_by_livro_id(livro).photo_url(:thumb)
    else
      'Imagem indisponível'
    end
  end


end
