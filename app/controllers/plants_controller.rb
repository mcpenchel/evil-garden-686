class PlantsController < ApplicationController

  def create
    # something = Something.new(something_params)
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden

    # if something.save
    # redirect_to somewhere
    # else
    # render something
    # end
    if @plant.save
      redirect_to garden_path(@plant.garden)
    else
      render 'gardens/show'
    end
  end

  def destroy
    @plant = Plant.find(params[:id])

    @plant.destroy

    redirect_to garden_path(@plant.garden)
  end

  private
  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
