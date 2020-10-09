class Item < ApplicationRecord
  has_many :item_categories, dependent: :destroy
  has_many :categories, through: :item_categories
  belongs_to :user, foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_many :item_img_ids, dependent: :destroy
  accepts_nested_attributes_for   :item_img_ids
  has_one :user_evaluation
  belongs_to :category
  # belongs_to_active_hash :size
  # belongs_to_active_hash :item_condition
  # belongs_to_active_hash :postage_payer
  # belongs_to_active_hash :preparation_day
  # belongs_to_active_hash :postage_type
  belongs_to :brand
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User"
  def self.search(search)
    return Item.all unless search
    Item.where(['name LIKE (?)', "%#{search}%"])
  end
end
