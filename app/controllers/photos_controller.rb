class PhotosController < ApplicationController
  before_filter :authenticate_user!

  def create
    @photo = Photo.new(params[:livro][:photos_attributes]['0'])

    respond_to do |format|
      if @photo.save
        store_photos_ids @photo.id
        format.json {render json: @photo.to_jq_upload}
      else
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def store_photos_ids(photo_id)
    if session[:photos_ids].nil?
      session[:photos_ids] = [photo_id]
    else
      session[:photos_ids] << photo_id
    end
  end

end
