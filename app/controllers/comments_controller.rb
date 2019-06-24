class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    comment = current_user.comments.build(contents: "BLAH" )
  end

  private
  def comment_params
    params.require(:comment).permit(:contents, :user_id )
  end
end
