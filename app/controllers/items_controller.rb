class ItemsController < ApplicationController
  def index
  end
  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    redirect_to :root
  end
  def edit
    @item = Item.find(params[:id])
  end
  def update
    item = Item.find(params[:id])
    item.update(item_params)
  end
  def show
    @item = Item.find(params[:id])
  end
end
