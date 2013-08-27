class PhotosController < ApplicationController


  before_filter :authenticate_user!

  def create
    @livro = Livro.new(params[:livro])
    @livro.photos.update(params[:livro][:photos_attributes])
  end
end
