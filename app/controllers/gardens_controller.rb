class GardensController < ApplicationController
  def new
    @garden = Garden.new
  end

  def create
    garden = current_user.gardens.build(garden_params)
    if garden.save
      redirect_to user_gardens_path(current_user)
    else
      render :new
    end
  end
  
  def index
    if params[:user_id]
      @gardens = Garden.from_user(params[:user_id]).to_a
    else
      @gardens = Garden.all
    end
  end
  
  def show
    @garden = current_user.gardens.find(params[:id])
    @plants = @garden.plants
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    @garden = Garden.find(params[:id])
    if @garden.update(garden_params)
      redirect_to user_garden_path(current_user, @garden)
    else
      render :edit
    end
  end

  def destroy
    garden = Garden.find(params[:id])
    current_user.gardens.destroy(garden)
    Garden.destroy(garden.id)
    redirect_to user_gardens_path
  end

  private
  def garden_params
    params.require(:garden).permit(:name, :start_date, :end_date)
  end
end
