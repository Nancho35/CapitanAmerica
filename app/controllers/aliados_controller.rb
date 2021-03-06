class AliadosController < ApplicationController
  before_action :set_aliado, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /aliados
  # GET /aliados.json
  def index
    @aliados = Aliado.all
  end

  # GET /aliados/1
  # GET /aliados/1.json
  def show
  end

  # GET /aliados/new
  def new
    @aliado = Aliado.new
  end

  # GET /aliados/1/edit
  def edit
  end

  # POST /aliados
  # POST /aliados.json
  def create
    @aliado = Aliado.new(aliado_params)

    respond_to do |format|
      if @aliado.save
        format.html { redirect_to @aliado, notice: 'Aliado was successfully created.' }
        format.json { render :show, status: :created, location: @aliado }
      else
        format.html { render :new }
        format.json { render json: @aliado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aliados/1
  # PATCH/PUT /aliados/1.json
  def update
    respond_to do |format|
      if @aliado.update(aliado_params)
        format.html { redirect_to @aliado, notice: 'Aliado was successfully updated.' }
        format.json { render :show, status: :ok, location: @aliado }
      else
        format.html { render :edit }
        format.json { render json: @aliado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aliados/1
  # DELETE /aliados/1.json
  def destroy
    @aliado.destroy
    respond_to do |format|
      format.html { redirect_to aliados_url, notice: 'Aliado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aliado
      @aliado = Aliado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aliado_params
      params.require(:aliado).permit(:nombre, :descripcion)

      #params.permit(:nombre, :descripcion)
      #params.permit(preferences: {})
      


    end
end
