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
      @gardens = User.find_by(id: params[:user_id]).gardens
      binding.pry
    else
      @gardens = Garden.all
      binding.pry
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
    redirect_to user_gardens_path
  end

  private
  def garden_params
    params.require(:garden).permit(:name, :start_date, :end_date)
  end
end
