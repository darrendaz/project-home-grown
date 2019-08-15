class ApiController < ApplicationController
  def gardens
    @gardens = Garden.all
    respond_to do |f|
    f.html {render json: @gardens}
    f.json {render json: @gardens}
    end
  end

  def plants
    @plants = Plant.all
      respond_to do |f|
      f.html {render json: @plants}
      f.json {render json: @plants}
    end
  end
end
