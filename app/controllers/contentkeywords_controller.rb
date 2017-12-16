class ContentkeywordsController < ApplicationController
  before_action :set_contentkeyword, only: [:show, :edit, :update, :destroy]
  def index
    @contentkeywords = Contentkeyword.all
  end

  def edit
    @contentkeyword = Contentkeyword.find(params[:id])
  end

  def new
    @contentkeyword = Contentkeyword.new
  end

  def create
    @contentkeyword = Contentkeyword.new(contentkeyword_params)

    respond_to do |format|
      if @contentkeyword.save
        format.html { redirect_to contentkeywords_path, notice: 'Dgt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @contentkeyword.update(contentkeyword_params)
        format.html { redirect_to contentkeywords_path, notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @contentkeyword }
      else
        format.html { render :edit }
        format.json { render json: @contentkeyword.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contentkeyword.destroy
    respond_to do |format|
      format.html { redirect_to contentkeywords_path, notice: '删除成功' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_contentkeyword
    @contentkeyword = Contentkeyword.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def contentkeyword_params
    params.require(:contentkeyword).permit(:keyword , :name)
  end
end
