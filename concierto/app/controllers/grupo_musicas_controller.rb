class GrupoMusicasController < ApplicationController
  # GET /grupo_musicas
  # GET /grupo_musicas.json
  def index
    @grupo_musicas = GrupoMusica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grupo_musicas }
    end
  end

  # GET /grupo_musicas/1
  # GET /grupo_musicas/1.json
  def show
    @grupo_musica = GrupoMusica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grupo_musica }
    end
  end

  # GET /grupo_musicas/new
  # GET /grupo_musicas/new.json
  def new
    @grupo_musica = GrupoMusica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grupo_musica }
    end
  end

  # GET /grupo_musicas/1/edit
  def edit
    @grupo_musica = GrupoMusica.find(params[:id])
  end

  # POST /grupo_musicas
  # POST /grupo_musicas.json
  def create
    @grupo_musica = GrupoMusica.new(params[:grupo_musica])

    respond_to do |format|
      if @grupo_musica.save
        format.html { redirect_to @grupo_musica, notice: 'Grupo musica was successfully created.' }
        format.json { render json: @grupo_musica, status: :created, location: @grupo_musica }
      else
        format.html { render action: "new" }
        format.json { render json: @grupo_musica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grupo_musicas/1
  # PUT /grupo_musicas/1.json
  def update
    @grupo_musica = GrupoMusica.find(params[:id])

    respond_to do |format|
      if @grupo_musica.update_attributes(params[:grupo_musica])
        format.html { redirect_to @grupo_musica, notice: 'Grupo musica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grupo_musica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_musicas/1
  # DELETE /grupo_musicas/1.json
  def destroy
    @grupo_musica = GrupoMusica.find(params[:id])
    @grupo_musica.destroy

    respond_to do |format|
      format.html { redirect_to grupo_musicas_url }
      format.json { head :no_content }
    end
  end
end
