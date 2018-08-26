class EnemigosController < ApplicationController
  before_action :set_enemigo, only: [:show, :edit, :update, :destroy]

  # GET /enemigos
  # GET /enemigos.json
  def index
    @enemigos = Enemigo.all
  end

  # GET /enemigos/1
  # GET /enemigos/1.json
  def show
  end

  # GET /enemigos/new
  def new
    @enemigo = Enemigo.new
  end

  # GET /enemigos/1/edit
  def edit
  end

  # POST /enemigos
  # POST /enemigos.json
  def create
    @enemigo = Enemigo.new(enemigo_params)

    respond_to do |format|
      if @enemigo.save
        format.html { redirect_to @enemigo, notice: 'Enemigo was successfully created.' }
        format.json { render :show, status: :created, location: @enemigo }
      else
        format.html { render :new }
        format.json { render json: @enemigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enemigos/1
  # PATCH/PUT /enemigos/1.json
  def update
    respond_to do |format|
      if @enemigo.update(enemigo_params)
        format.html { redirect_to @enemigo, notice: 'Enemigo was successfully updated.' }
        format.json { render :show, status: :ok, location: @enemigo }
      else
        format.html { render :edit }
        format.json { render json: @enemigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enemigos/1
  # DELETE /enemigos/1.json
  def destroy
    @enemigo.destroy
    respond_to do |format|
      format.html { redirect_to enemigos_url, notice: 'Enemigo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enemigo
      @enemigo = Enemigo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enemigo_params
      params.require(:enemigo).permit(:nombre, :edad, :poderes)
    end
end
