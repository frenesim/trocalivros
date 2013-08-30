class PhotosController < ApplicationController

  before_filter :authenticate_user!

  def create
    @photo = Photo.new(params[:livro][:photos_attributes]['0'])

    respond_to do |format|
      if @photo.save
        @photos_ids = params[:photos_ids]
        @photos_ids.push(@photo.id)
        format.json { photos_ids = @photos_ids}
      else
        format.json { render json: @photos.errors, status: :unprocessable_entity }
      end
    end
  end

end
