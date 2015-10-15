class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :edit, :destroy]



  def show
  end


  def new
     @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
  def destroy
    @dose = Dose.find(params[:id])
    @dose.destory
    redirect_to cocktail_dose_path

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

end
