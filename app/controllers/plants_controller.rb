class PlantsController < ApplicationController
  def new
    @plant = Plant.new
  end
  
  def show
    @plant = Plant.find_by(id: params[:id])
  end
end
