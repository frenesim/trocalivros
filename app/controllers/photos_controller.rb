class PhotosController < ApplicationController
  before_filter :authenticate_user!

  def create
    # @photo = Photo.new({:image => params[:livro][:photos_attributes]['0'][:image][0]})
    @photo = Photo.new(params[:livro][:photos_attributes]['0'])

    respond_to do |format|
      if @photo.save
        store_photos_ids @photo.id
        format.json {render json: {files: [@photo.to_jq_upload]}, status: :created}
      else
        render :json => [ @photo.to_jq_upload.merge({ :error => "custom_failure" }) ].to_json
        #render :json => [{:error => "custom_failure"}], :status => 304
      end
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    session[:photos_ids].delete(@photo.id)
    render :json => true
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
