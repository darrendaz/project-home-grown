class PlantsController < ApplicationController
  def index
    binding.pry
    if !current_user.gardens.find_by(id: params[:garden_id]).nil?
      # need to setup render template here?
      @phrase = "matched garden to current user"
    else
      redirect_to gardens_path
    end
  end
end
