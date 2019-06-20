class GardensController < ApplicationController
  before_action :authenticate_user!
  def index
    @gardens = Garden.all
  end
end
