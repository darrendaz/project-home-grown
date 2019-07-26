class GardensController < ApplicationController
  def index
    if params[:user_id]
      @gardens = Garden.from_user(params[:user_id]).to_a
      respond_to do |f|
        f.html {render :index}
        f.json {render json: @gardens}
      end
    else
      @gardens = Garden.all
      respond_to do |f|
        f.html {render :index}
        f.json {render json: @gardens}
      end
      # add feature: show only gardens that are listed as public
    end
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    if @garden.valid?
      @garden.users << current_user
      if @garden.save
        respond_to do |f|
          f.html {redirect_to @garden, notice: 'Garden was successfully created.'}
          f.json {render json: @garden}
        end
      end
    else
      flash[:error] = "<ul>" + @garden.errors.full_messages.map{|o| "<li>" + o + "</li>" }.join("") + "</ul>"
      render :new
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
    respond_to do |f|
      f.html {redirect_to user_gardens_path}
      f.json {head :no_content}
    end
    # redirect_to user_gardens_path
  end

  private
  def garden_params
    params.require(:garden).permit(:name, :start_date, :end_date)
  end
end
