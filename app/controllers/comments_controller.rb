class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.valid? 
      @comment.save
      redirect_to "/items/#{@comment.item.id}"
    else
      redirect_to "/items/#{@comment.item.id}"

      # redirect_back(fallback_location: root_path)
    end

  end

  private
  def comment_params
    params.require(:comment).permit( :id, :comment).merge(user_id: current_user.id,item_id: params[:item_id])
    # params.require(:item).permit(:name, :introduction, :price, :prefecture_code, :brand_id, :pref_id, :size_id, :item_condition_id, :postage_payer_id, :preparation_day_id, :postage_type_id, :category_id, :trading_status, item_imgs_attributes: [:url, :id]).merge(seller_id: current_user.id)
  end
end
