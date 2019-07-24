class PlantsController < ApplicationController
  def new
    @plant = Plant.new
    @garden = Garden.find(params[:garden_id])
  end

  def create
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
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @plant}
    end
  end

  def destroy
    @plant = Plant.find_by(id: params[:id])
    @plant.destroy
    respond_to do |f|
      f.html {redirect_to plants_url}
      f.json {head :no_content}
    end

  end

  private

  def plant_params
    params.require(:plant).permit(:name, :species, :strain, :sex, :time_until_harvest)
  end
end
