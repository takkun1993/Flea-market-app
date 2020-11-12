class Item < ApplicationRecord
  # has_many :item_categories, dependent: :destroy
  # has_many :categories, through: :item_categories
  belongs_to :user
  # foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_many :item_imgs, dependent: :destroy
  accepts_nested_attributes_for :item_imgs, allow_destroy: true
  # mount_uploader :src, ImageUploader
  # belongs_to :item, optional: true
  # accepts_nested_attributes_for :categories
  # accepts_nested_attributes_for :brands
  # validates :src, presence: true
  has_one :user_evaluation
  belongs_to :category
  # belongs_to_active_hash :size
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture_code
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :postage_payer
  belongs_to_active_hash :preparation_day
  # belongs_to_active_hash :postage_type
  belongs_to :brand
  validates :item_imgs ,:name ,:prefecture_code ,:item_condition ,:postage_payer ,:preparation_day ,:preparation_day ,:price ,presence: true
  validates :price, numericality: { greater_than: 300 ,less_than: 9999999}
  # belongs_to :seller, class_name: "User"
  # belongs_to :buyer, class_name: "User"
  def self.search(search)
    return Item.all unless search
    Item.where(['name LIKE (?)', "%#{search}%"])
  end 
end