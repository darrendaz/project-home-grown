class GardensController < ApplicationController
  before_action :authenticate_user!
  def new
    @garden = Garden.new
  end

  def create
    garden = current_user.gardens.build(garden_params)
    binding.pry
    if garden.save
      redirect_to gardens_path
    end
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def index
    binding.pry
    @user = current_user
    @gardens = @user.gardens
  end

  private
  def garden_params
    params.require(:garden).permit(:name)
  end
end
