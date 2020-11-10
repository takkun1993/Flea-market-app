class ItemsController < ApplicationController
  def index
    @items = Item.all
    @category_parent_array = Category.where(ancestry: nil)
    @items_category = Item.where("buyer_id IS NULL AND trading_status = 0 AND category_id < 200").order(created_at: "DESC")
    @items_brand = Item.where("buyer_id IS NULL AND  trading_status = 0 AND brand_id = 1").order(created_at: "DESC")
    @items_destroy = Item.includes(:item).order("created_at DESC")
  end

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
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      @item.item_imgs.new
      render :new
    end
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy

    redirect_to("/")
  end

  def edit
    @item = Item.find(params[:id])
    
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
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

  def purchase
    @user = current_user
    @creditcard = Card.where(user_id: current_user.id).first
    @item = Item.find(params[:id])
    user = User.find(params[:id])
    @card = user.card
    Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
    customer = Payjp::Customer.retrieve(@creditcard.customer_id)
    @creditcard_information = customer.cards.first
    @card_brand = @creditcard_information.brand 
    pay
    @item_buyer = Item.find(params[:id])
    @item_buyer.update( buyer_id: current_user.id)
    redirect_to root_path, notice: '購入しました'
    case @card_brand
    when "Visa"
      @card_src = "visa.gif"
    when "JCB"
      @card_src = "jcb.gif"
    when "MasterCard"
      @card_src = "master.png"
    when "American Express"
      @card_src = "amex.gif"
    when "Diners Club"
      @card_src = "diners.gif"
    when "Discover"
      @card_src = "discover.gif"
    end
  end

  
  private
  def item_params
    params.require(:item).permit( :name, :introduction, :price, :prefecture_code_id, :brand_id, :size, :item_condition_id, :postage_payer_id, :preparation_day_id, :postage_type_id, :category_id, :comment_id, item_imgs_attributes: [:src, :id]).merge(seller_id: current_user.id, user_id: current_user.id)
  end
  
  def pay
    @item = Item.find(params[:id])
    user = User.find(params[:id])
    @card = Card.find_by(params[:id])
    Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
    Payjp::Charge.create(
      :amount => @item.price,
      :customer => @card.customer_id,
      :currency => 'jpy',
    )
  end
  
end
