class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to item_path(@comment.item.id)
  end

  def show
   
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
