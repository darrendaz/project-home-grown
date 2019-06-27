class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @plant = Plant.find_by(id: params[:plant_id])
    @comment = @plant.comments.build(comment_params)
    @comment.user = current_user
    if @comment.valid?
      @comment.set_user!(current_user)
      redirect_to plant_path(@comment.plant_id)
    else
      flash[:error] = "<ul>" + @plant.errors.full_messages.map{|o| "<li>" + o + "</li>" }.join("") + "</ul>"
      redirect_to garden_plant_path(@plant.garden, @plant)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:contents, :user_id, :plant_id)
  end
end
