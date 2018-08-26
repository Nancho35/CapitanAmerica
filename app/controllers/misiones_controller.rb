class MisionesController < ApplicationController
  before_action :set_misione, only: [:show, :edit, :update, :destroy]

  # GET /misiones
  # GET /misiones.json
  def index
    @misiones = Misione.all
  end

  # GET /misiones/1
  # GET /misiones/1.json
  def show
  end

  # GET /misiones/new
  def new
    @misione = Misione.new
  end

  # GET /misiones/1/edit
  def edit
  end

  # POST /misiones
  # POST /misiones.json
  def create
    @misione = Misione.new(misione_params)

    respond_to do |format|
      if @misione.save
        format.html { redirect_to @misione, notice: 'Misione was successfully created.' }
        format.json { render :show, status: :created, location: @misione }
      else
        format.html { render :new }
        format.json { render json: @misione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /misiones/1
  # PATCH/PUT /misiones/1.json
  def update
    respond_to do |format|
      if @misione.update(misione_params)
        format.html { redirect_to @misione, notice: 'Misione was successfully updated.' }
        format.json { render :show, status: :ok, location: @misione }
      else
        format.html { render :edit }
        format.json { render json: @misione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misiones/1
  # DELETE /misiones/1.json
  def destroy
    @misione.destroy
    respond_to do |format|
      format.html { redirect_to misiones_url, notice: 'Misione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_misione
      @misione = Misione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def misione_params
      params.require(:misione).permit(:nombre, :locacion, :fecha, :heroes_requeridos, :integer)
    end
end
