class AutoresController < ApplicationController
  # GET /autores
  # GET /autores.json

  before_filter :authenticate_user!

  def index
    @autores = Autore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @autores }
    end
  end

  # GET /autores/1
  # GET /autores/1.json
  def show
    @autore = Autore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @autore }
    end
  end

  # GET /autores/new
  # GET /autores/new.json
  def new
    @autore = Autore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @autore }
    end
  end

  # GET /autores/1/edit
  def edit
    @autore = Autore.find(params[:id])
  end

  # POST /autores
  # POST /autores.json
  def create
    @autore = Autore.new(params[:autore])

    respond_to do |format|
      if @autore.save
        format.html { redirect_to @autore, notice: 'Autore was successfully created.' }
        format.json { render json: @autore, status: :created, location: @autore }
      else
        format.html { render action: "new" }
        format.json { render json: @autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /autores/1
  # PUT /autores/1.json
  def update
    @autore = Autore.find(params[:id])

    respond_to do |format|
      if @autore.update_attributes(params[:autore])
        format.html { redirect_to @autore, notice: 'Autore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @autore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autores/1
  # DELETE /autores/1.json
  def destroy
    @autore = Autore.find(params[:id])
    @autore.destroy

    respond_to do |format|
      format.html { redirect_to autores_url }
      format.json { head :no_content }
    end
  end
end
