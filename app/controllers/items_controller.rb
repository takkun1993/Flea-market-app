class ItemsController < ApplicationController
  def index
    @category_parent_array = Category.where(ancestry: nil)
  end

  def new
    @category_parent_array = Category.where(ancestry: nil)
  end

  def get_category_children
    respond_to do |format|
      format.html
      format.json do
        @children = Category.find(params[:parent_id]).children
      end
    end
  end

  def get_category_grandchildren
    respond_to do |format|
      format.html
      format.json do
        @grandchildren = Category.find("#{params[:child_id]}").children
      end
    end
  end
end
