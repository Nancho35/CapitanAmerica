class PatrocinadorsController < ApplicationController
  before_action :set_patrocinador, only: [:show, :edit, :update, :destroy]

  # GET /patrocinadors
  # GET /patrocinadors.json
  def index
    @patrocinadors = Patrocinador.all
  end

  # GET /patrocinadors/1
  # GET /patrocinadors/1.json
  def show
  end

  # GET /patrocinadors/new
  def new
    @patrocinador = Patrocinador.new
  end

  # GET /patrocinadors/1/edit
  def edit
  end

  # POST /patrocinadors
  # POST /patrocinadors.json
  def create
    @patrocinador = Patrocinador.new(patrocinador_params)

    respond_to do |format|
      if @patrocinador.save
        format.html { redirect_to @patrocinador, notice: 'Patrocinador was successfully created.' }
        format.json { render :show, status: :created, location: @patrocinador }
      else
        format.html { render :new }
        format.json { render json: @patrocinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patrocinadors/1
  # PATCH/PUT /patrocinadors/1.json
  def update
    respond_to do |format|
      if @patrocinador.update(patrocinador_params)
        format.html { redirect_to @patrocinador, notice: 'Patrocinador was successfully updated.' }
        format.json { render :show, status: :ok, location: @patrocinador }
      else
        format.html { render :edit }
        format.json { render json: @patrocinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patrocinadors/1
  # DELETE /patrocinadors/1.json
  def destroy
    @patrocinador.destroy
    respond_to do |format|
      format.html { redirect_to patrocinadors_url, notice: 'Patrocinador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patrocinador
      @patrocinador = Patrocinador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patrocinador_params
      params.require(:patrocinador).permit(:nombre, :nit, :descripcion, :dinero)
    end
end
