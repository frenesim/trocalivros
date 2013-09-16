class LivrosController < ApplicationController
  # GET /livros
  # GET /livros.json

  before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @livros = Livro.simple_search params[:simple_search]
    unless session[:photos_ids].nil?
      @photo = Photo.find(session[:photos_ids])
    end
  end

  # GET /livros/1
  # GET /livros/1.json
  def show
    session[:return_to] = request.referer
    @livro = Livro.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @livro }
    end
  end

  # GET /livros/new
  # GET /livros/new.json
  def new
  #  session[:photos_ids].delete if session[:photos_ids].empty?
    @livro = Livro.new
    @livro.photos.build
      respond_to do |format|
        format.html # new.html.erb
        #format.json { render json: @livro }
      end
    end

  # GET /livros/1/edit
  def edit
    @livro = Livro.find(params[:id])
    #@livro.photos.build
  end

  # POST /livros
  # POST /livros.json
  def create
    @livro = Livro.new(params[:livro])
    @livro.user_id = current_user.id

    respond_to do |format|
      if @livro.save
        begin
          save_photos_ids @livro.id
        rescue
          flash[:error] = 'Aconteceu algo inesperado. Lamento, mas terá que repetir a introdução do Livro'
          format.html { render action: "index"}
        else
          format.html { redirect_to @livro, notice: 'Livro was successfully created.' }
        end
      else
        @livro.photos.build
        @photo = Photo.find(session[:photos_ids])
        @aaa = []
        @photo.each {|p| @aaa.push(p.to_jq_upload)}
        flash[:error] = @livro.errors.full_messages
        format.html { render action: "new"}
        format.json { render json: @livro.errors, status: :unprocessable_entity }
        true
      end
    end
  end

  # PUT /livros/1
  # PUT /livros/1.json
  def update
    @livro = Livro.find(params[:id])

    respond_to do |format|
      if @livro.update_attributes(params[:livro])
        format.html { redirect_to @livro, notice: 'Livro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @livro.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livros/1
  # DELETE /livros/1.json
  def destroy
    @livro = Livro.find(params[:id])
    @livro.destroy

    respond_to do |format|
      format.html { redirect_to livros_url }
      format.json { head :no_content }
    end
  end

  private
  def save_photos_ids(livro_id)
    unless session[:photos_ids].nil?
      photos_ids = session.delete(:photos_ids)
      @photos = Photo.find(photos_ids)
      @photos.each do |p|
        p.update_attributes( { livro_id: livro_id } ) if p.livro_id.nil?
      end
    end
  end
end
