class SliderkeywordsController < ApplicationController

  before_action :set_sliderkeyword, only: [:show, :edit, :update, :destroy]
  def index
    @sliderkeywords = Sliderkeyword.all
  end

  def edit
    @sliderkeyword = Sliderkeyword.find(params[:id])
  end

  def new
    @sliderkeyword = Sliderkeyword.new
  end

  def create
    @sliderkeyword = Sliderkeyword.new(sliderkeyword_params)

    respond_to do |format|
      if @sliderkeyword.save
        format.html { redirect_to sliderkeywords_path, notice: 'Dgt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @sliderkeyword.update(sliderkeyword_params)
        format.html { redirect_to sliderkeywords_path, notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @sliderkeyword }
      else
        format.html { render :edit }
        format.json { render json: @sliderkeyword.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sliderkeyword.destroy
    respond_to do |format|
      format.html { redirect_to sliderkeywords_path, notice: '删除成功' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sliderkeyword
    @sliderkeyword = Sliderkeyword.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def sliderkeyword_params
    params.require(:sliderkeyword).permit(:keyword , :name)
  end

end
