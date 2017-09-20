class FichaNumsController < ApplicationController
  before_action :set_ficha_num, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /ficha_nums
  # GET /ficha_nums.json
  def index
    @ficha_nums = FichaNum.all

    @pacientes = Paciente.all
    @categoris = Categori.all
    @puesto_saluds = PuestoSalud.all 


    # @ficha_nums = FichaNum.where(["nombre LIKE ?","%#{params[:Buscar]}%"])

  end

  # GET /ficha_nums/1
  # GET /ficha_nums/1.json
  def show
    @pacientes = Paciente.all
    @puesto_salud = PuestoSalud.all
  end

  # GET /ficha_nums/new
  def new
    @ficha_num = FichaNum.new
    
    @categoris = Categori.all
    @puesto_salud = PuestoSalud.all
  end


  # GET /ficha_nums/1/edit
  def edit
    @categoris = Categori.all
    @puesto_salud = PuestoSalud.all
  end

  # POST /ficha_nums
  # POST /ficha_nums.json


  def _new_paciente
    respond_to do |format|
      format.html
      format.js
    end
  end



  def create

    @ficha_num = FichaNum.new(ficha_num_params)

    # @paciente = @ficha_num.pacientes.create(paciente_params)
   
    puts "------------------------"
    @ficha_num.categoria_id = 1
    puts @ficha_num.inspect
    puts "----------------"

      respond_to do |format|
      if @ficha_num.save
        format.html { redirect_to @ficha_num, notice: 'Ficha num se creó correctamente.' }
        format.json { render :show, status: :created, location: @ficha_num }
      else
        format.html { render :new }
        format.json { render json: @ficha_num.errors, status: :unprocessable_entity }
      end  
    end
  end

  # PATCH/PUT /ficha_nums/1
  # PATCH/PUT /ficha_nums/1.json
  def update
    respond_to do |format|
      if @ficha_num.update(ficha_num_params)
        format.html { redirect_to @ficha_num, notice: 'Ficha num was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha_num }
      else
        format.html { render :edit }
        format.json { render json: @ficha_num.errors, status: :unprocessable_entity }
      end
    end
  end

  def getInfoFich
     @ficha_num = FichaNum.find(params[:id])

    puts @ficha_num.inspect

    respond_to do |format|
    msg = { :status => "ok", :message => "Success!"}
    format.json  { render json: @ficha_num } # don't do msg.to_json
    end
  end

  # DELETE /ficha_nums/1
  # DELETE /ficha_nums/1.json
  def destroy
    @ficha_num.destroy
    respond_to do |format|
      format.html { redirect_to ficha_nums_url, notice: 'Ficha numero fue Eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_num
      @ficha_num = FichaNum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_num_params
      params.require(:ficha_num).permit(:numero,:categori_id, :puesto_salud_id, :paciente_id)

      # paciente_attributes: [:nombre, :apellido, :ci, :sexo, :edad, :lugarNacimiento, :nacionalidad, :etnia]
    end
end
