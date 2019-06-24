class PlantsController < ApplicationController
  def new
    @plant = Plant.new
  end

  def create
    garden = Garden.find(params[:garden_id])
    plant = garden.plants.build(plant_params)
    comment = plant.comments.last
    comment.set_user!(current_user)

    if plant.save
      redirect_to garden_path(garden)
    end
  end
  
  def show
    @plant = Plant.find_by(id: params[:id])
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :species, :strain, :sex, :time_until_harvest, comments_attributes: [:contents])
  end
end
