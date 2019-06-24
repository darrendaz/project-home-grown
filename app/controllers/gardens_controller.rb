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
      @gardens = User.find(params[:user_id]).gardens
    else
      @gardens = Garden.all
    end
  end
  
  def show
    @garden = current_user.gardens.find(params[:id])
    @plants = @garden.plants
  end

  private
  def garden_params
    params.require(:garden).permit(:name, :start_date, :end_date)
  end
end
