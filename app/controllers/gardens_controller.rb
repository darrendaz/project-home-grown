class GardensController < ApplicationController
  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    
    if @garden.valid?
      @garden.users << current_user
      redirect_to user_garden_path(current_user, @garden) if @garden.save
    else
      flash[:error] = "<ul>" + @garden.errors.full_messages.map{|o| "<li>" + o + "</li>" }.join("") + "</ul>"
      render :new
    end
  end
  
  def index
    if params[:user_id]
      @gardens = Garden.from_user(params[:user_id]).to_a
    else
      @gardens = Garden.all
      # add feature: show only gardens that are listed as public
    end
  end
  
  def show
    if params[:user_id] == current_user.id
      @garden = User.find(params[:user_id]).gardens.find(params[:id])
    else
      @garden = Garden.find(params[:id])
    end
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    @garden = Garden.find(params[:id])
    if @garden.update(garden_params)
      redirect_to user_garden_path(current_user, @garden)
    else
      flash[:error] = "<ul>" + @garden.errors.full_messages.map{|o| "<li>" + o + "</li>" }.join("") + "</ul>"
      render :edit
    end
  end

  def destroy
    garden = Garden.find(params[:id])
    current_user.gardens.destroy(garden)
    Garden.destroy(garden.id)
    redirect_to user_gardens_path
  end

  private
  def garden_params
    params.require(:garden).permit(:name, :start_date, :end_date)
  end
end
