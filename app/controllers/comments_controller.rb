class CommentsController < ApplicationController
  require "byebug"
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.scrim_ad_id = params[:scrim_ad]
    @comment.save
    redirect_to scrim_ads_path
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:description)
  end
end
