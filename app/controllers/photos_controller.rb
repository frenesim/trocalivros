class PhotosController < ApplicationController

  def destroy
    @livro = Livro.find(params[:id])
    @livro.destroy

    respond_to do |format|
      format.html { redirect_to livros_url }
      format.json { head :no_content }
    end
  end
end