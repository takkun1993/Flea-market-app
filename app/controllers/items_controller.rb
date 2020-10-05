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
  def search
    sort = params[:sort] || "created_at DESC"
    @keyword = params[:keyword]

    if @keyword.present?
      @items = []
       # 分割したキーワードごとに検索
      @keyword.split(/[[:blank:]]+/).each do |keyword|
        next if keyword == ""
        @items += Item.where('name LIKE(?) OR description LIKE(?)', "%#{keyword}%", "%#{keyword}%")
      end
      @items.uniq!
    else
      @items = Item.order(sort)
    end
  end
  private
  def item_params
    params.permit(:name, :introduction, :price, :brand_id, :item_condition, :postage_payer, :prefecuture_type, :item_img_id, :ca_code, :size, :preparation_day, :postagetegory_id, :seller_id, :buyer_id)
  end
end
