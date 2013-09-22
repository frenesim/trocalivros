class PhotosController < ApplicationController
  before_filter :authenticate_user!

  def upload
    #@photo = Photo.new(params[:livro][:photos_attributes]['0'])
    @photo = Photo.new( :image => params[:livro][:image] )
    #@photos = Photo.new({:image => params[:livro][:photos_attributes]['0'][:image]})
    @photo.user_id = current_user.id
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
    livro_id = @photo.livro_id
    @photo.destroy
    session[:photos_ids].delete(@photo.id) unless session[:photos_ids].empty?
    redirect_to edit_livro_path(livro_id) if livro_id
#    else
#      render :json => true
#    end

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
