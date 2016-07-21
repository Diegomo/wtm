class HombresController < ApplicationController
  before_action :set_hombre, only: [:show, :edit, :update, :destroy]

  # GET /hombres
  # GET /hombres.json
  def index
    @hombres = Hombre.all
  end

  # GET /hombres/1
  # GET /hombres/1.json
  def show
  end

  # GET /hombres/new
  def new
    @hombre = Hombre.new
  end

  # GET /hombres/1/edit
  def edit
  end

  # POST /hombres
  # POST /hombres.json
  def create
    @hombre = Hombre.new(hombre_params)

    respond_to do |format|
      if @hombre.save
        format.html { redirect_to @hombre, notice: 'Hombre was successfully created.' }
        format.json { render :show, status: :created, location: @hombre }
      else
        format.html { render :new }
        format.json { render json: @hombre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hombres/1
  # PATCH/PUT /hombres/1.json
  def update
    respond_to do |format|
      if @hombre.update(hombre_params)
        format.html { redirect_to @hombre, notice: 'Hombre was successfully updated.' }
        format.json { render :show, status: :ok, location: @hombre }
      else
        format.html { render :edit }
        format.json { render json: @hombre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hombres/1
  # DELETE /hombres/1.json
  def destroy
    @hombre.destroy
    respond_to do |format|
      format.html { redirect_to hombres_url, notice: 'Hombre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hombre
      @hombre = Hombre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hombre_params
      params.require(:hombre).permit(:nombre, :apellido, :cedula)
    end
end
