class CardsController < ApplicationController
  require "payjp"
  before_action :move_to_index

  def new
    card = Card.where(user_id: current_user.id)
    redirect_to card_path(current_user.id) if card.exists?
  end

  def pay
    Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
    if params['payjp-token'].blank?
      redirect_to new_card_path
    else
      customer = Payjp::Customer.create(
        card: params['payjp-token'],
        metadata: {user_id: current_user.id}
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to card_path(current_user.id)
      else
        redirect_to pay_cards_path
      end
    end
  end
        
  def destroy
    card = Card.find_by(user_id: current_user.id)
    if card.blank?
    else
      Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
      redirect_to new_card_path
  end

  def show
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to new_card_path
    else
      Payjp.api_key = Rails.application.credentials[:PAYJP_PRIVATE_KEY]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
      @card_brand = @default_card_information.brand
      case @card_brand
      when "Visa"
        @card_src = "visa.gif"
      when "JCB"
        @card_src = "jcb.gif"
      when "MasterCard"
        @card_src = "master.gif"
      when "American Express"
        @card_src = "amex.gif"
      when "Diners Club"
        @card_src = "diners.gif"
      when "Discover"
        @card_src = "discover.gif"
      end
    end
  end

  private
  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

end
