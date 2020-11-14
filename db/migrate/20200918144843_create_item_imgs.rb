class CreateItemImgs < ActiveRecord::Migration[6.0]
  def change
    create_table :item_imgs do |t|
      t.text     :src,   null:false
      t.integer    :item_id
      t.timestamps
    end
  end
end
