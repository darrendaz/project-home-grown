class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    
  end

  private
  def comment_params
    params.require(:comment).permit(:contents, :user_id )
  end
end
