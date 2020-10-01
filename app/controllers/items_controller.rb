class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def new
    @item = Item.new
    @item_img = @item.item_imgs.build
  end
  def create
    Item.create(item_params)
  end
  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
  end
  def edit
    @item = Item.find(params[:id])
  end
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
  end
  def show
    @item = Item.find(params[:id])
  end
  private
  def item_params
    params.permit(:name, :introduction, :price, :brand_id, :item_condition, :postage_payer, :prefecuture_type, :item_img_id, :ca_code, :size, :preparation_day, :postagetegory_id, :seller_id, :buyer_id)
  end
end
