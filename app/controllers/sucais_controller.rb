class SucaisController < ApplicationController

  before_action :set_sucai, only: [:show, :edit, :update, :destroy]
  def index
    @sucais = Sucai.all
  end

  def edit
    @sucai = Sucai.find(params[:id])
  end

  def new
    @sucai = Sucai.new
  end

  def create
    @sucai = Sucai.new(sucai_params)

    respond_to do |format|
      if @sucai.save
        format.html { redirect_to sucais_path, notice: 'Dgt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @sucai.update(sucai_params)
        format.html { redirect_to sucais_path, notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @sucai }
      else
        format.html { render :edit }
        format.json { render json: @sucai.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sucai.destroy
    respond_to do |format|
      format.html { redirect_to sucais_path, notice: '删除成功' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sucai
    @sucai = Sucai.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def sucai_params
    params.require(:sucai).permit(:title,:sucaiimg)
  end

end
