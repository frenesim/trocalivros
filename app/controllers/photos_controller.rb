class PhotosController < ApplicationController

  def create

    @photo = Photo.new(params[:livro][:photos_attributes][0])

    if @photo.save
      jj = @photo.to_jq_upload
      pp = [jj].to_json
      render :json => [@photo.to_jq_upload].to_json
             #:content_type => 'text/html',
             #:layout => false
    else
      jj = @photo.to_jq_upload
      #render :json => @photos.collect { |p| p.to_jq_upload }.to_json
    end
  end
end