class FavouritesController < ApplicationController
  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new(favourite_params)
    if @favourite.save
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @favoutite = Favourite.all(params[:id])
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy

    redirect_to cars_path, status: :see_other
  end

  private

  def favourite_params
    params.require(:favourite).permit(:car_id)
  end
end
