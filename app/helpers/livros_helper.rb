module LivrosHelper
  def owner_link(livro)
    link_to t('helpers.links.edit', :default => t("helpers.links.details")), edit_livro_path(livro), :class => 'btn btn-link' if current_user && current_user.id == livro.user_id
  end

  def redirect_back
    session.delete(:return_to)
  end

  def main_photo_thumb(livro)
    if photos_thumbs(livro)
      return image_tag BookPhoto.find_last_by_livro_id(livro), :thumb if livro.photo1.file?
    else
      'Imagem indisponível'
    end
  end

  def photos_thumbs(livro)
    livro.photo1.file?
  end
end
