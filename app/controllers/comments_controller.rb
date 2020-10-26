class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  def create
    @comment = @item.comments.new(comments_params)
    redirect_to "/items/#{comment.comment.id}"
  end
end
