module LivrosHelper
  def owner_link(livro)
    link_to t('helpers.links.edit', :default => t("helpers.links.details")), edit_livro_path(livro), :class => 'btn btn-link' if current_user && current_user.id == livro.user_id
  end

  def redirect_back
    session.delete(:return_to)
  end

  def main_photo_thumb(livro)
    if photos_thumbs(livro)
      return image_tag livro.photo1.url :thumb if livro.photo1.file?
      return image_tag livro.photo2.url :thumb if livro.photo2.file?
      return image_tag livro.photo3.url :thumb if livro.photo3.file?
      return image_tag livro.photo4.url :thumb if livro.photo4.file?
    else
      'Imagem não disponível'
    end
  end

  def photos_thumbs(livro)
    livro.photo1.file? || livro.photo2.file? || livro.photo3.file? || livro.photo4.file?
  end
end
