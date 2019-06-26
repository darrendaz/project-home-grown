class PlantsController < ApplicationController
  def new
    @plant = Plant.new
    @garden = Garden.find(params[:garden_id])
  end

  def create
    # @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])
    @plant = @garden.plants.build(plant_params)
    if @plant.valid?
      @plant.save
      redirect_to garden_path(@plant.garden)
    else
      flash[:error] = "<ul>" + @plant.errors.full_messages.map{|o| "<li>" + o + "</li>" }.join("") + "</ul>"
      render :new
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
