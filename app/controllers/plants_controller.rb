class PlantsController < ApplicationController
  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    binding.pry
    garden = Garden.find(params[:garden_id])
    plant = garden.plants.build(plant_params)

    if plant.save
      redirect_to garden_path(garden)
    end
  end
  
  def show
    @plant = Plant.find_by(id: params[:id])
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :species, :strain, :sex, :time_until_harvest)
  end
end
