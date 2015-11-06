class DiscipuladoresController < ApplicationController
  before_action :set_discipulador, only: [:show, :edit, :update, :destroy]

  # GET /discipuladores
  # GET /discipuladores.json
  def index
    @discipuladores = Discipulador.all
  end

  # GET /discipuladores/1
  # GET /discipuladores/1.json
  def show
  end

  # GET /discipuladores/new
  def new
    @discipulador = Discipulador.new
  end

  # GET /discipuladores/1/edit
  def edit
  end

  # POST /discipuladores
  # POST /discipuladores.json
  def create
    @discipulador = Discipulador.new(discipulador_params)

    respond_to do |format|
      if @discipulador.save
        format.html { redirect_to @discipulador, notice: 'Discipulador was successfully created.' }
        format.json { render :show, status: :created, location: @discipulador }
      else
        format.html { render :new }
        format.json { render json: @discipulador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discipuladores/1
  # PATCH/PUT /discipuladores/1.json
  def update
    respond_to do |format|
      if @discipulador.update(discipulador_params)
        format.html { redirect_to @discipulador, notice: 'Discipulador was successfully updated.' }
        format.json { render :show, status: :ok, location: @discipulador }
      else
        format.html { render :edit }
        format.json { render json: @discipulador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discipuladores/1
  # DELETE /discipuladores/1.json
  def destroy
    @discipulador.destroy
    respond_to do |format|
      format.html { redirect_to discipuladores_url, notice: 'Discipulador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipulador
      @discipulador = Discipulador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discipulador_params
      params.require(:discipulador).permit(:nome, :cpf, :fone_residencial, :fone_celular, :endereco, :bairro, :cidade, :estado)
    end
end
