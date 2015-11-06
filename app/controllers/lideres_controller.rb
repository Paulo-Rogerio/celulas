class LideresController < ApplicationController
  before_action :set_lider, only: [:show, :edit, :update, :destroy]

  # GET /lideres
  # GET /lideres.json
  def index
    @lideres = Lider.all
  end

  # GET /lideres/1
  # GET /lideres/1.json
  def show
  end

  # GET /lideres/new
  def new
    @lider = Lider.new
  end

  # GET /lideres/1/edit
  def edit
  end

  # POST /lideres
  # POST /lideres.json
  def create
    @lider = Lider.new(lider_params)

    respond_to do |format|
      if @lider.save
        format.html { redirect_to @lider, notice: 'Lider was successfully created.' }
        format.json { render :show, status: :created, location: @lider }
      else
        format.html { render :new }
        format.json { render json: @lider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lideres/1
  # PATCH/PUT /lideres/1.json
  def update
    respond_to do |format|
      if @lider.update(lider_params)
        format.html { redirect_to @lider, notice: 'Lider was successfully updated.' }
        format.json { render :show, status: :ok, location: @lider }
      else
        format.html { render :edit }
        format.json { render json: @lider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lideres/1
  # DELETE /lideres/1.json
  def destroy
    @lider.destroy
    respond_to do |format|
      format.html { redirect_to lideres_url, notice: 'Lider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lider
      @lider = Lider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lider_params
      params.require(:lider).permit(:nome, :cpf, :discipulador, :telefone, :residencial, :celular, :Endereco, :Bairro, :Cidade, :Estado)
    end
end
