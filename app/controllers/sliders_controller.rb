class SlidersController < ApplicationController

  before_action :set_slider, only: [:show, :edit, :update, :destroy]
  def index
    @sliders = Slider.all
  end

  def edit
    @slider = Slider.find(params[:id])
    @sliderkeywords = Sliderkeyword.all
  end

  def new
    @slider = Slider.new
    @sliderkeywords = Sliderkeyword.all
  end

  def create
    @slider = Slider.new(slider_params)

    respond_to do |format|
      if @slider.save
        format.html { redirect_to sliders_path, notice: 'Dgt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @slider.update(slider_params)
        format.html { redirect_to sliders_path, notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider }
      else
        format.html { render :edit }
        format.json { render json: @slider.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @slider.destroy
    respond_to do |format|
      format.html { redirect_to sliders_path, notice: '删除成功' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_slider
    @slider = Slider.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def slider_params
    params.require(:slider).permit(:title,:content, :sliderkeyword_id)
  end

end
