class GardensController < ApplicationController
  def index

  end
  
  def show
    @garden = current_user.gardens.find(params[:id])
    @plants = @garden.plants
  end
end
