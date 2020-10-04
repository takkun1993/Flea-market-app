class Item < ApplicationRecord
  has_many :item_categories, dependent: :destroy
  has_many :categories, through: :item_categories
  belongs_to :user, foreign_key: 'user_id'
end
