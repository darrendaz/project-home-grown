class PlantsController < ApplicationController
  def show
    @plant = Plant.find_by(id: params[:id])
  end
end
