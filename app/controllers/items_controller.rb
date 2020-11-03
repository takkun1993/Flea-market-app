class ItemsController < ApplicationController
  def index
    @items = Item.all
    @category_parent_array = Category.where(ancestry: nil)
    @items_category = Item.where("buyer_id IS NULL AND trading_status = 0 AND category_id < 200").order(created_at: "DESC")
    @items_brand = Item.where("buyer_id IS NULL AND  trading_status = 0 AND brand_id = 1").order(created_at: "DESC")
  end

  # def get_category_children
  #   respond_to do |format|
  #     format.html
  #     format.json do
  #       @children = Category.find(params[:parent_id]).children
  #     end
  #   end
  # end

  # def get_category_grandchildren
  #   respond_to do |format|
  #     format.html
  #     format.json do
  #       @grandchildren = Category.find("#{params[:child_id]}").children
  #     end
  #   end
  #   @items = Item.all
  # end

  def new
    @item = Item.new
    @item.item_imgs.new
    #セレクトボックスの初期値設定
    @category_parent_array = ["---"]
    #データベースから、親カテゴリーのみ抽出し、配列化
    Category.where(ancestry: nil).each do |parent|
    @category_parent_array << parent.name
    end
  end
    
  # 以下全て、formatはjsonのみ
  # 親カテゴリーが選択された後に動くアクション
  def category_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    # @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
    @category_children = Category.find_by("#{params[:parent_id]}").children
  end

  # 子カテゴリーが選択された後に動くアクション
  def category_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end
  
  # def create
  #   @item = Item.new(item_params)
  #   if @item.save
  #     redirect_to  post_done_items_path
  #   else
  #     @item.item_imgs.new
  #     render :new
  #   end
  # end
  def create
    @item = Item.new(item_params)
    # binding.pry
    if @item.save
      redirect_to @item
    else
      render :new
    end
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
    # binding.pry
    if @item.update!(item_params)
      # redirect_to item_path(@item)
      redirect_to item_path(@item)
    end
  end

  def show
    @item = Item.find(params[:id])
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
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
    params.require(:item).permit( :name, :introduction, :price, :prefecture_code_id, :brand_id, :size, :item_condition_id, :postage_payer_id, :preparation_day_id, :postage_type_id, :category_id, :comment_id, item_imgs_attributes: [:src, :id]).merge(seller_id: current_user.id, user_id: current_user.id)
    # params.require(:item).permit(:name, :introduction, :price, :prefecture_code, :brand_id, :pref_id, :size_id, :item_condition_id, :postage_payer_id, :preparation_day_id, :postage_type_id, :category_id, :trading_status, item_imgs_attributes: [:url, :id]).merge(seller_id: current_user.id)
  end
end
