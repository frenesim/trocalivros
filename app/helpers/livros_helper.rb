module LivrosHelper
  def owner_link(livro)
    link_to t('helpers.links.edit', :default => t("helpers.links.details")), edit_livro_path(livro), :class => 'btn btn-link' if current_user && current_user.id == livro.user_id
  end

  def redirect_back
    session.delete(:return_to)
  end

  def main_photo_thumb(livro)
    @book = livro
    if photos_thumbs.nil?
      'imagem não disponível'
    else
      image_tag @book.photo1.url :thumb unless @book.photo1_file_name.nil?
    end
  end

  def photos_thumbs(livro)
    if @book.photo1.file? || @livro.photo2.file? || @livro.photo3.file? || @livro.photo4.file?
       image_tag @livro.photo1.url(:thumb) if @livro.photo1.file?
       image_tag @livro.photo2.url(:thumb) if @livro.photo2.file?
       image_tag @livro.photo3.url(:thumb) if @livro.photo3.file?
       image_tag @livro.photo4.url(:thumb) if @livro.photo4.file?

  end
end
