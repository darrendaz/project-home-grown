class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    redirect_to user_gardens_path(@user.id)
  end
end
