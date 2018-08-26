class CompanerosController < ApplicationController
  before_action :set_companero, only: [:show, :edit, :update, :destroy]

  # GET /companeros
  # GET /companeros.json
  def index
    @companeros = Companero.all
  end

  # GET /companeros/1
  # GET /companeros/1.json
  def show
  end

  # GET /companeros/new
  def new
    @companero = Companero.new
  end

  # GET /companeros/1/edit
  def edit
  end

  # POST /companeros
  # POST /companeros.json
  def create
    @companero = Companero.new(companero_params)

    respond_to do |format|
      if @companero.save
        format.html { redirect_to @companero, notice: 'Companero was successfully created.' }
        format.json { render :show, status: :created, location: @companero }
      else
        format.html { render :new }
        format.json { render json: @companero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companeros/1
  # PATCH/PUT /companeros/1.json
  def update
    respond_to do |format|
      if @companero.update(companero_params)
        format.html { redirect_to @companero, notice: 'Companero was successfully updated.' }
        format.json { render :show, status: :ok, location: @companero }
      else
        format.html { render :edit }
        format.json { render json: @companero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companeros/1
  # DELETE /companeros/1.json
  def destroy
    @companero.destroy
    respond_to do |format|
      format.html { redirect_to companeros_url, notice: 'Companero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companero
      @companero = Companero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companero_params
      params.require(:companero).permit(:nombre, :descripcion, :especialidad)
    end
end
