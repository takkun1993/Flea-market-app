class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :nickname ,presence: true, length: { maximum: 8}
  validates :email ,presence: true
  validates :password,presence: true, length: { maximum: 10}
  validates :encrypted_password ,presence: true
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :todo_lists
  has_many :user_evaluations
  has_many :seller_items, foreign_key: "seller_id", class_name: "items"
  has_many :buyer_items, foreign_key: "buyer_id", class_name: "items"
  has_one :point
  has_one :profile, dependent: :destroy
  has_one :sns_authentication, dependent: :destroy
  has_one :sending_destination, dependent: :destroy
  has_one :card, dependent: :destroy
end
