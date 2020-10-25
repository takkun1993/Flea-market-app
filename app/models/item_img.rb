class ItemImg < ApplicationRecord
  belongs_to :item

  mount_uploader :src, ImageUploader
end
