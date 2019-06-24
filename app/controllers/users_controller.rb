class UsersController < ApplicationController
  def index
    redirect_to user_gardens_path(current_user)
  end

  def show
    redirect_to user_gardens_path(current_user)
  end
end
