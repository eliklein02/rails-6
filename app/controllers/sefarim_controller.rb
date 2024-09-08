class SefarimController < ApplicationController
  def index
    @sefer = Sefer.all
  end

  def show
    @sefer = Sefer.find(params[:id])
  end

  def edit
    @sefer = Sefer.find(params[:id])
  end

  def update
    @sefer = Sefer.find(params[:id])
    if @sefer.update(params.require(:sefer).permit(:name, :author))
      redirect_to sefarim_path(@sefer)
    else
      render :edit
    end
  end

  def new
    @sefer = Sefer.new
  end

  def create
    @sefer = Sefer.new(params.require(:sefer).permit(:name, :author))
    if @sefer.save
      render @sefer
    else
    end
  end
end
