class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :edit, :update]
  def index
      @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @heroine.update(heroine_params)
      redirect_to heroine_path(@heroine)
    else
      render :edit
    end
  end

  def destroy
    Heroine.find(params[:id]).destroy
    redirect_to heroines_path
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
