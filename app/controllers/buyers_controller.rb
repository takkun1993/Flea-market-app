class BuyersController < ApplicationController
  require 'payjp'
  before_action :set_card, :set_item

  def index
    if @card.blank?
      redirect_to new_card_path
    else
      Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def pay
    Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
    Payjp::Charge.create(
      :amount => @item.price,
      :customer => @card.customer_id,
      :currency => 'jpy',
    )
    redirect_to done_item_buyers_path
  end

  def done
  end

  private

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
  
end
