class PuestoSaludsController < ApplicationController
  before_action :set_puesto_salud, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  # GET /puesto_saluds
  # GET /puesto_saluds.json
  def index
    @puesto_saluds = PuestoSalud.all
  end

  # GET /puesto_saluds/1
  # GET /puesto_saluds/1.json
  def show
  end

  # GET /puesto_saluds/new
  def new
    @puesto_salud = PuestoSalud.new
  end

  # GET /puesto_saluds/1/edit
  def edit
  end

  def getInfo

  end



  # POST /puesto_saluds
  # POST /puesto_saluds.json
  def create
    @puesto_salud = PuestoSalud.new(puesto_salud_params)

    respond_to do |format|
      if @puesto_salud.save
        format.html { redirect_to @puesto_salud, notice: 'Puesto salud was successfully created.' }
        format.json { render :show, status: :created, location: @puesto_salud }
      else
        format.html { render :new }
        format.json { render json: @puesto_salud.errors, status: :unprocessable_entity }
      end
    end
  end



  def getInfo
     @puesto_salud = PuestoSalud.find(params[:id])

    puts @puesto_salud.inspect

    respond_to do |format|
    msg = { :status => "ok", :message => "Success!"}
    format.json  { render json: @puesto_salud } # don't do msg.to_json
    end
  end




  # PATCH/PUT /puesto_saluds/1
  # PATCH/PUT /puesto_saluds/1.json
  def update
    respond_to do |format|
      if @puesto_salud.update(puesto_salud_params)
        format.html { redirect_to @puesto_salud, notice: 'Puesto salud was successfully updated.' }
        format.json { render :show, status: :ok, location: @puesto_salud }
      else
        format.html { render :edit }
        format.json { render json: @puesto_salud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puesto_saluds/1
  # DELETE /puesto_saluds/1.json
  def destroy
    @puesto_salud.destroy
    respond_to do |format|
      format.html { redirect_to puesto_saluds_url, notice: 'Puesto salud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puesto_salud
      @puesto_salud = PuestoSalud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puesto_salud_params
      params.require(:puesto_salud).permit(:nombre, :contacto, :localidad, :distrito, :direccion, :regionSanitaria)
    end
end
