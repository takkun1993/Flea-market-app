class ItemImg < ApplicationRecord
  belongs_to :item

  mount_uploader :item_img_id, ImageUploader
end
