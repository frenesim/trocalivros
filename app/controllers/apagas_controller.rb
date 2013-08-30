class ApagasController < ApplicationController
  # GET /apagas
  # GET /apagas.json
  def index
    @apagas = Apaga.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apagas }
    end
  end

  # GET /apagas/1
  # GET /apagas/1.json
  def show
    @apaga = Apaga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apaga }
    end
  end

  # GET /apagas/new
  # GET /apagas/new.json
  def new
    @apaga = Apaga.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apaga }
    end
  end

  # GET /apagas/1/edit
  def edit
    @apaga = Apaga.find(params[:id])
  end

  # POST /apagas
  # POST /apagas.json
  def create
    @apaga = Apaga.new(params[:apaga])

    respond_to do |format|
      if @apaga.save
        format.html { redirect_to @apaga, notice: 'Apaga was successfully created.' }
        format.json { render json: @apaga, status: :created, location: @apaga }
      else
        format.html { render action: "new" }
        format.json { render json: @apaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apagas/1
  # PUT /apagas/1.json
  def update
    @apaga = Apaga.find(params[:id])

    respond_to do |format|
      if @apaga.update_attributes(params[:apaga])
        format.html { redirect_to @apaga, notice: 'Apaga was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apagas/1
  # DELETE /apagas/1.json
  def destroy
    @apaga = Apaga.find(params[:id])
    @apaga.destroy

    respond_to do |format|
      format.html { redirect_to apagas_url }
      format.json { head :no_content }
    end
  end
end
