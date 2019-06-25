class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new(comment_params)
    comment.plant_id = params[:plant_id]
    binding.pry
    if comment.set_user!(current_user)
      redirect_to plant_path(comment.plant_id)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:contents, :user_id, :plant_id)
  end
end
